//
//  CMTBind.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/15.
//

import UIKit

typealias CMTSubObserverClosure = (Any?) -> () -> Any?
protocol CMTObserverSubObserversProtocol {
    var subObserverTransformClosure: CMTSubObserverClosure? { get }
    func subObserverValue(_ v: Any?)
}

/// 观察者，当value改变时，会刷新绑定的View的属性
public class CMTObserver<T>: Equatable {
    // 添加监听回调，如果return true，只回调一次
    public typealias CMTObserverListenerClosure = (T?, T?) -> Bool
    
    public init(_ v: T?) {
        value = v
    }
    
    private var subscribers: Array<CMTBindClosure<T>> = []
    private lazy var listeners: Array<CMTObserverListenerClosure> = {
        return []
    }()
    
    private var subObserverClosure: CMTSubObserverClosure?
    lazy var subObservers: Array<CMTObserverSubObserversProtocol> = {
        return []
    }()
    
    public var value: T? {
        didSet {
            // 当value修改后，会向所有的订阅者发送通知
            // 如果对应的CMTBind对象释放，则subscribers会剔除与之对应的观察者
            subscribers = subscribers.filter { f in
                return !f(value)
            }
            // 监听回调
            listeners = listeners.filter({ f in
                return !f(oldValue, value)
            })
            // 所有子元素开始刷新
            subObservers.forEach { f in
                let result = f.subObserverTransformClosure?(value)()
                f.subObserverValue(result)
            }
        }
    }
    
    fileprivate func add(_ subscriber: @escaping CMTBindClosure<T>) {
        subscribers.append(subscriber)
    }
    
    public static func == (lhs: CMTObserver<T>, rhs: CMTObserver<T>) -> Bool {
        let left = Unmanaged<AnyObject>.passUnretained(lhs).toOpaque()
        let right = Unmanaged<AnyObject>.passUnretained(rhs).toOpaque()
        return left == right
    }
    
    deinit {
        debugPrint("\(self): \(#function)")
    }
}

extension CMTObserver: CMTObserverSubObserversProtocol {
    public typealias CMTObserverTransformClosure = (T?) -> Any?
    // 转换生成一个新的 CMTObserver 对象
    public func ts<S>(_ v: @escaping CMTObserverTransformClosure) -> CMTObserver<S> {
        let ob = CMTObserver<S>.init(v(self.value) as? S)
        ob.subObserverClosure = { (v1: Any?) in
            return { () in
                return v(v1 as? T)
            }
        }
        subObservers.append(ob)
        return ob
    }
    
    internal var subObserverTransformClosure: CMTSubObserverClosure? {
        return self.subObserverClosure
    }
    
    internal func subObserverValue(_ v: Any?) {
        value = v as? T
    }
}


extension CMTObserver {
    
    public func addListener(_ closure: @escaping CMTObserverListenerClosure) -> Self {
        listeners.append(closure)
        return self
    }
}

extension CMTObserver {
    
    public func update() {
        let old = self.value
        self.value = old
    }
    
}


/// 中介类，防止CMTObserver对CMTBind对象强引用
fileprivate class CMTMediator<T> {
    
    typealias CMTMediatorClosure = (CMTObserver<T>?, T?) -> Bool
    
    init(_ observer: CMTObserver<T>?, closure: @escaping CMTMediatorClosure) {
        runObserver = observer
        runClosure = closure
    }
    
    private let runClosure: CMTMediatorClosure
    private weak var runObserver: CMTObserver<T>?
    
    func run(_ t: T?) -> Bool {
        return runClosure(runObserver, t)
    }
    
    deinit {
        debugPrint("\(self): \(#function)")
    }
}


@objc protocol CMTBindUploadProtocol {
    
}

public typealias CMTBindClosure<T> = (T?) -> Bool
/// 绑定对象，提供常用的UIView的属性
open class CMTBind {

    init(_ over: CMTBindUploadProtocol) {
        bindOver = over
    }
    
    weak private(set) var bindOver: CMTBindUploadProtocol?
    
    final func bindMediator<T>(_ oldObserver: CMTObserver<T>?, observer: CMTObserver<T>?, closure: ((T?) -> Void)?) {
        closure?(observer?.value)
        if oldObserver == observer {
            return
        }
        weak var weakObserver = observer
        // 通过中介对象进行绑定，防止循环引用
        let mediator = CMTMediator<T>.init(observer, closure: {[weak self] (v1, v2) in
            // 修改Observer后，老的Observer需要return
            if (v1 != weakObserver) {
                return false
            }
            closure?(v2)
            // 当bind被释放，需要告知Observer删除对应的观察者
            return self == nil
        })
        // Observer添加一个观察者
        observer?.add(run(mediator))
    }
    
    private func run<T>(_ mediator: CMTMediator<T>) -> CMTBindClosure<T> {
        return { (t) in
            return mediator.run(t)
        }
    }
    
    deinit {
        debugPrint("\(self): \(#function)")
    }
}

//
//  CMTBindProgressView.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/21.
//

import UIKit

protocol CMTBindProgressViewBindUpdateProtocol: CMTViewBindUpdateProtocol {
    func updateProgressViewStyle(_ progressViewStyle: UIProgressView.Style?)
    func updateProgress(_ progress: Float?)
    func updateProgressTintColor(_ progressTintColor: UIColor?)
    func updateTrackTintColor(_ trackTintColor: UIColor?)
    func updateProgressImage(_ progressImage: UIImage?)
    func updateTrackImage(_ trackImage: UIImage?)
    @available(iOS 9.0, *)
    func updateObservedProgress(_ observedProgress: Progress?)
}

open class CMTBindProgressView: CMTBindView {
    init(_ over: CMTBindProgressViewBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var progressViewStyle: CMTObserver<UIProgressView.Style>? {
        didSet {
            bindMediator(oldValue, observer: progressViewStyle) {[weak self] t in
                (self?.bindOver as? CMTBindProgressViewBindUpdateProtocol)?.updateProgressViewStyle(t)
            }
        }
    }
    
    public weak var progress: CMTObserver<Float>? {
        didSet {
            bindMediator(oldValue, observer: progress) {[weak self] t in
                (self?.bindOver as? CMTBindProgressViewBindUpdateProtocol)?.updateProgress(t)
            }
        }
    }
    
    public weak var progressTintColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: progressTintColor) {[weak self] t in
                (self?.bindOver as? CMTBindProgressViewBindUpdateProtocol)?.updateProgressTintColor(t)
            }
        }
    }
    
    public weak var trackTintColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: trackTintColor) {[weak self] t in
                (self?.bindOver as? CMTBindProgressViewBindUpdateProtocol)?.updateTrackTintColor(t)
            }
        }
    }
    
    public weak var progressImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: progressImage) {[weak self] t in
                (self?.bindOver as? CMTBindProgressViewBindUpdateProtocol)?.updateProgressImage(t)
            }
        }
    }
    
    public weak var trackImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: trackImage) {[weak self] t in
                (self?.bindOver as? CMTBindProgressViewBindUpdateProtocol)?.updateTrackImage(t)
            }
        }
    }
    
    public weak var _observedProgress: CMTObserver<Progress>? {
        didSet {
            bindMediator(oldValue, observer: _observedProgress) {[weak self] t in
                if #available(iOS 9.0, *) {
                    (self?.bindOver as? CMTBindProgressViewBindUpdateProtocol)?.updateObservedProgress(t)
                }else {
                    // Fallback on earlier versions
                    assert(false, "observedProgress need iOS9.0+")
                }
            }
        }
    }
}

extension CMTBindProgressView {
    
    @available(iOS 9.0, *)
    public var observedProgress: CMTObserver<Progress>? {
        get {
            return _observedProgress
        }
        set {
            _observedProgress = newValue
        }
    }
}

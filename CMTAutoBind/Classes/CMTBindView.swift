//
//  CMTBindView.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/16.
//

import UIKit


protocol CMTViewBindUpdateProtocol: CMTBindUploadProtocol {
    func updateFrame(_ frame: CGRect?)
    func updateBounds(_ bounds: CGRect?)
    func updateCenter(_ center: CGPoint?)
    func updateTransform(_ transform: CGAffineTransform?)
    
    func updateBackgroundColor(_ color: UIColor?)
    func updateClipsToBounds(_ clipsToBounds: Bool?)
    func updateAlpha(_ alpha: Float?)
    func updateIsOpaque(_ isOpaque: Bool?)
    func updateClearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool?)
    func updateIsHidden(_ isHidden: Bool?)
    func updateContentMode(_ contentMode: UIView.ContentMode?)
    func updateTintColor(_ tintColor: UIColor?)
    
    func bindGestureRecognizer(_ tap: UIGestureRecognizer)
}

open class CMTBindView: CMTBind {
    init(_ over: CMTViewBindUpdateProtocol) {
        super.init(over)
    }
    
    private var onTapBlock: ((UIGestureRecognizer) -> Void)?
    private var onLongPressBlock: ((UIGestureRecognizer) -> Void)?
    
    public weak var frame: CMTObserver<CGRect>? {
        didSet {
            bindMediator(oldValue, observer: frame) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateFrame(t)
            }
        }
    }
    
    public weak var bounds: CMTObserver<CGRect>? {
        didSet {
            bindMediator(oldValue, observer: bounds) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateBounds(t)
            }
        }
    }
    
    public weak var center: CMTObserver<CGPoint>? {
        didSet {
            bindMediator(oldValue, observer: center) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateCenter(t)
            }
        }
    }

    public weak var transform: CMTObserver<CGAffineTransform>? {
        didSet {
            bindMediator(oldValue, observer: transform) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateTransform(t)
            }
        }
    }
        
    public weak var backgroundColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: backgroundColor) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateBackgroundColor(t)
            }
        }
    }
    
    public weak var clipsToBounds: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: clipsToBounds) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateClipsToBounds(t)
            }
        }
    }
    
    public weak var alpha: CMTObserver<Float>? {
        didSet {
            bindMediator(oldValue, observer: alpha) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateAlpha(t)
            }
        }
    }
    
    public weak var isOpaque: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isOpaque) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateIsOpaque(t)
            }
        }
    }
    
    public weak var clearsContextBeforeDrawing: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: clearsContextBeforeDrawing) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateClearsContextBeforeDrawing(t)
            }
        }
    }
    
    public weak var isHidden: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isHidden) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateIsHidden(t)
            }
        }
    }
    
    public weak var contentMode: CMTObserver<UIView.ContentMode>? {
        didSet {
            bindMediator(oldValue, observer: contentMode) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateContentMode(t)
            }
        }
    }
    
    public weak var tintColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: tintColor) {[weak self] t in
                (self?.bindOver as? CMTViewBindUpdateProtocol)?.updateTintColor(t)
            }
        }
    }

    public func addTapGesture(_ tapBlock: @escaping (UIGestureRecognizer) -> Void) {
        self.onTapBlock = tapBlock
        let gr = UITapGestureRecognizer.init(target: self, action: #selector(onTap(_:)))
        (self.bindOver as? CMTViewBindUpdateProtocol)?.bindGestureRecognizer(gr)
    }
    
    public func addLongPressGesture(_ tapBlock: @escaping (UIGestureRecognizer) -> Void) {
        self.onTapBlock = tapBlock
        let gr = UILongPressGestureRecognizer.init(target: self, action: #selector(onLongPress(_:)))
        (self.bindOver as? CMTViewBindUpdateProtocol)?.bindGestureRecognizer(gr)
    }
    
    @objc private func onTap(_ gesture: UIGestureRecognizer) {
        self.onTapBlock?(gesture)
    }
    
    @objc private func onLongPress(_ gesture: UIGestureRecognizer) {
        self.onLongPressBlock?(gesture)
    }
}

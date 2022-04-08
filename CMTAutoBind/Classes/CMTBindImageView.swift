//
//  CMTBindImageView.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/15.
//

import UIKit

protocol CMTImageViewBindUpdateProtocol: CMTViewBindUpdateProtocol {
    func updateImage(_ image: UIImage?)
    func updateHighlightedImage(_ image: UIImage?)
    @available(iOS 13.0, *)
    func updatePreferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?)
    func updateIsHighlighted(_ isHighlighted: Bool?)
    func updateAnimationImages(_ animationImages: [UIImage]?)
    func updateHighlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?)
    func updateAnimationDuration(_ animationDuration: TimeInterval?)
    func updateAnimationRepeatCount(_ animationRepeatCount: Int?)
}

open class CMTBindImageView: CMTBindView {

    init(_ over: CMTImageViewBindUpdateProtocol) {
        super.init(over)
    }
    
    weak var image: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: image) {[weak self] t in
                (self?.bindOver as? CMTImageViewBindUpdateProtocol)?.updateImage(t)
            }
        }
    }
    
    weak var highlightedImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: highlightedImage) {[weak self] t in
                (self?.bindOver as? CMTImageViewBindUpdateProtocol)?.updateHighlightedImage(t)
            }
        }
    }
    
    private weak var _preferredSymbolConfiguration: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _preferredSymbolConfiguration) {[weak self] t in
                if #available(iOS 13.0, *) {
                    (self?.bindOver as? CMTImageViewBindUpdateProtocol)?.updatePreferredSymbolConfiguration(t as? UIImage.SymbolConfiguration)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    weak var isHighlighted: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isHighlighted) {[weak self] t in
                (self?.bindOver as? CMTImageViewBindUpdateProtocol)?.updateIsHighlighted(t)
            }
        }
    }
    
    weak var animationImages: CMTObserver<[UIImage]>? {
        didSet {
            bindMediator(oldValue, observer: animationImages) {[weak self] t in
                (self?.bindOver as? CMTImageViewBindUpdateProtocol)?.updateAnimationImages(t)
            }
        }
    }
    
    weak var highlightedAnimationImages: CMTObserver<[UIImage]>? {
        didSet {
            bindMediator(oldValue, observer: highlightedAnimationImages) {[weak self] t in
                (self?.bindOver as? CMTImageViewBindUpdateProtocol)?.updateHighlightedAnimationImages(t)
            }
        }
    }
    
    weak var animationDuration: CMTObserver<TimeInterval>? {
        didSet {
            bindMediator(oldValue, observer: animationDuration) {[weak self] t in
                (self?.bindOver as? CMTImageViewBindUpdateProtocol)?.updateAnimationDuration(t)
            }
        }
    }
    
    weak var animationRepeatCount: CMTObserver<Int>? {
        didSet {
            bindMediator(oldValue, observer: animationRepeatCount) {[weak self] t in
                (self?.bindOver as? CMTImageViewBindUpdateProtocol)?.updateAnimationRepeatCount(t)
            }
        }
    }
    
    deinit {
        debugPrint("\(self): \(#function)")
    }
}

extension CMTBindImageView {
    @available(iOS 13.0, *)
    var preferredSymbolConfiguration: CMTObserver<Any>? {
        get {
            return _preferredSymbolConfiguration
        }
        set {
            if newValue?.value is UIImage.SymbolConfiguration {
                _preferredSymbolConfiguration = newValue
            }else {
                assert(false, "value 类型必须为 UIImage.SymbolConfiguration")
            }
        }
    }
}

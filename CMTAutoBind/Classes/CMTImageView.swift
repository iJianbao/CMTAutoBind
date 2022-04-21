//
//  CMTImageView.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/15.
//

import UIKit

open class CMTImageView: UIImageView, CMTImageViewBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindImageView(self)
    }()
    
    func updateImage(_ image: UIImage?) {
        self.image = image
    }
    
    func updateHighlightedImage(_ image: UIImage?) {
        self.highlightedImage = image
    }
    
    @available(iOS 13.0, *)
    func updatePreferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?) {
        self.preferredSymbolConfiguration = preferredSymbolConfiguration
    }
    
    func updateIsHighlighted(_ isHighlighted: Bool?) {
        self.isHighlighted = isHighlighted ?? self.isHighlighted
    }
    
    func updateAnimationImages(_ animationImages: [UIImage]?) {
        self.animationImages = animationImages
    }
    
    func updateHighlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) {
        self.highlightedAnimationImages = highlightedAnimationImages
    }
    
    func updateAnimationDuration(_ animationDuration: TimeInterval?) {
        if animationDuration == nil {
            self.animationDuration =  self.animationDuration
        }else {
            self.animationDuration = animationDuration!
        }
    }
    
    func updateAnimationRepeatCount(_ animationRepeatCount: Int?) {
        self.animationRepeatCount = animationRepeatCount ?? self.animationRepeatCount
    }
    
    deinit {
        print("\(self): \(#function)")
    }
}

extension CMTImageView {
    func updateFrame(_ frame: CGRect?) {
        self.frame = frame ?? self.frame
    }
    
    func updateBounds(_ bounds: CGRect?) {
        self.bounds = bounds ?? self.bounds
    }
    
    func updateCenter(_ center: CGPoint?) {
        self.center = center ?? self.center
    }
    
    func updateTransform(_ transform: CGAffineTransform?) {
        self.transform = transform ?? self.transform
    }
    
    func updateBackgroundColor(_ color: UIColor?) {
        self.backgroundColor = color
    }
    
    func updateClipsToBounds(_ clipsToBounds: Bool?) {
        self.clipsToBounds = clipsToBounds ?? self.clipsToBounds
    }
    
    func updateAlpha(_ alpha: Float?) {
        if let a = alpha {
            self.alpha = CGFloat(a)
        }
    }
    
    func updateIsOpaque(_ isOpaque: Bool?) {
        self.isOpaque = isOpaque ?? self.isOpaque
    }
    
    func updateClearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool?) {
        self.clearsContextBeforeDrawing = clearsContextBeforeDrawing ?? self.clearsContextBeforeDrawing
    }
    
    func updateIsHidden(_ isHidden: Bool?) {
        self.isHidden = isHidden ?? self.isHidden
    }
    
    func updateContentMode(_ contentMode: UIView.ContentMode?) {
        self.contentMode = contentMode ?? self.contentMode
    }
    
    func updateTintColor(_ tintColor: UIColor?) {
        self.tintColor = tintColor
    }
    
    func bindGestureRecognizer(_ tap: UIGestureRecognizer) {
        self.addGestureRecognizer(tap)
    }
}

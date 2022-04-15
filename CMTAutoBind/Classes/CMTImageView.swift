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
        self.isHighlighted = isHighlighted ?? false
    }
    
    func updateAnimationImages(_ animationImages: [UIImage]?) {
        self.animationImages = animationImages
    }
    
    func updateHighlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) {
        self.highlightedAnimationImages = highlightedAnimationImages
    }
    
    func updateAnimationDuration(_ animationDuration: TimeInterval?) {
        if animationDuration == nil {
            self.animationDuration =  Double((self.animationImages?.count ?? 0)) / 30.0
        }else {
            self.animationDuration = animationDuration!
        }
    }
    
    func updateAnimationRepeatCount(_ animationRepeatCount: Int?) {
        self.animationRepeatCount = animationRepeatCount ?? 0
    }
    
    deinit {
        print("\(self): \(#function)")
    }
}

extension CMTImageView {
    func updateFrame(_ frame: CGRect?) {
        self.frame = frame ?? CGRect.zero
    }
    
    func updateBounds(_ bounds: CGRect?) {
        self.bounds = bounds ?? CGRect.zero
    }
    
    func updateCenter(_ center: CGPoint?) {
        self.center = center ?? CGPoint.zero
    }
    
    func updateTransform(_ transform: CGAffineTransform?) {
        self.transform = transform ?? CGAffineTransform.identity
    }
    
    func updateBackgroundColor(_ color: UIColor?) {
        self.backgroundColor = color
    }
    
    func updateClipsToBounds(_ clipsToBounds: Bool?) {
        self.clipsToBounds = clipsToBounds ?? false
    }
    
    func updateAlpha(_ alpha: Float?) {
        self.alpha = CGFloat(alpha ?? 1)
    }
    
    func updateIsOpaque(_ isOpaque: Bool?) {
        self.isOpaque = isOpaque ?? true
    }
    
    func updateClearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool?) {
        self.clearsContextBeforeDrawing = clearsContextBeforeDrawing ?? true
    }
    
    func updateIsHidden(_ isHidden: Bool?) {
        self.isHidden = isHidden ?? false
    }
    
    func updateContentMode(_ contentMode: UIView.ContentMode?) {
        self.contentMode = contentMode ?? .scaleToFill
    }
    
    func updateTintColor(_ tintColor: UIColor?) {
        self.tintColor = tintColor
    }
    
    func bindGestureRecognizer(_ tap: UIGestureRecognizer) {
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(tap)
    }
}

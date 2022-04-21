//
//  CMTProgressView.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/18.
//

import UIKit

open class CMTProgressView: UIProgressView, CMTBindProgressViewBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindProgressView(self)
    }()
    
    func updateProgressViewStyle(_ progressViewStyle: UIProgressView.Style?) {
        self.progressViewStyle = progressViewStyle ?? self.progressViewStyle
    }
    
    func updateProgress(_ progress: Float?) {
        self.progress = progress ?? self.progress
    }
    
    func updateProgressTintColor(_ progressTintColor: UIColor?) {
        self.progressTintColor = progressTintColor
    }
    
    func updateTrackTintColor(_ trackTintColor: UIColor?) {
        self.trackTintColor = trackTintColor
    }
    
    func updateProgressImage(_ progressImage: UIImage?) {
        self.progressImage = progressImage
    }
    
    func updateTrackImage(_ trackImage: UIImage?) {
        self.trackImage = trackImage
    }
    @available(iOS 9.0, *)
    func updateObservedProgress(_ observedProgress: Progress?) {
        self.observedProgress = observedProgress
    }

}

extension CMTProgressView {
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



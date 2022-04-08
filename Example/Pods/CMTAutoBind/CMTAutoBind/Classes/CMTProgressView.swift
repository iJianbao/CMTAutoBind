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
        self.progressViewStyle = progressViewStyle ?? .default
    }
    
    func updateProgress(_ progress: Float?) {
        self.progress = progress ?? 0.0
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
}



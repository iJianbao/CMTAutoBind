//
//  CMTSlider.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/18.
//

import UIKit

open class CMTSlider: UISlider, CMTBindSliderBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindSlider(self)
    }()
    
    func updateValue(_ value: Float?) {
        self.value = value ?? 0.0
    }
    
    func updateMinimumValue(_ minimumValue: Float?) {
        self.minimumValue = minimumValue ?? 0.0
    }
    
    func updateMaximumValue(_ maximumValue: Float?) {
        self.maximumValue = maximumValue ?? 0.0
    }

    func updateMinimumValueImage(_ minimumValueImage: UIImage?) {
        self.minimumValueImage = minimumValueImage
    }

    func updateMaximumValueImage(_ maximumValueImage: UIImage?) {
        self.maximumValueImage = maximumValueImage
    }
    
    func updateIsContinuous(_ isContinuous: Bool?) {
        self.isContinuous = isContinuous ?? true
    }
    
    func updateMinimumTrackTintColor(_ minimumTrackTintColor: UIColor?) {
        self.minimumTrackTintColor = minimumTrackTintColor
    }
    
    func updateMaximumTrackTintColor(_ maximumTrackTintColor: UIColor?) {
        self.maximumTrackTintColor = maximumTrackTintColor
    }
    
    func updateThumbTintColor(_ thumbTintColor: UIColor?) {
        self.thumbTintColor = thumbTintColor
    }

}

extension CMTSlider {
    func updateIsEnabled(_ isEnabled: Bool?) {
        self.isEnabled = isEnabled ?? true
    }
    
    func updateIsSelected(_ isSelected: Bool?) {
        self.isSelected = isSelected ?? false
    }
    
    func updateIsHighlighted(_ isHighlighted: Bool?) {
        self.isHighlighted = isHighlighted ?? false
    }
    
    func updateContentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment?) {
        self.contentVerticalAlignment = contentVerticalAlignment ?? .center
    }
    
    func updateContentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment?) {
        self.contentHorizontalAlignment = contentHorizontalAlignment ?? .center
    }
}

extension CMTSlider {
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


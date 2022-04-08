//
//  CMTStepper.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/22.
//

import UIKit

open class CMTStepper: UIStepper, CMTBindStepperBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindStepper(self)
    }()
    
    func updateIsContinuous(_ isContinuous: Bool?) {
        self.isContinuous = isContinuous ?? self.isContinuous
    }
    
    func updateAutorepeat(_ autorepeat: Bool?) {
        self.autorepeat = autorepeat ?? self.autorepeat
    }
    
    func updateWraps(_ wraps: Bool?) {
        self.wraps = wraps ?? self.wraps
    }
    
    func updateValue(_ value: Double?) {
        self.value = value ?? self.value
    }

    func updateMinimumValue(_ minimumValue: Double?) {
        self.minimumValue = minimumValue ?? self.minimumValue
    }

    func updateMaximumValue(_ maximumValue: Double?) {
        self.maximumValue = maximumValue ?? self.maximumValue
    }
    
    func updateStepValue(_ stepValue: Double?) {
        self.stepValue = stepValue ?? self.stepValue
    }
}

extension CMTStepper {
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

extension CMTStepper {
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



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
        self.isEnabled = isEnabled ?? self.isEnabled
    }
    
    func updateIsSelected(_ isSelected: Bool?) {
        self.isSelected = isSelected ?? self.isSelected
    }
    
    func updateIsHighlighted(_ isHighlighted: Bool?) {
        self.isHighlighted = isHighlighted ?? self.isHighlighted
    }
    
    func updateContentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment?) {
        self.contentVerticalAlignment = contentVerticalAlignment ?? self.contentVerticalAlignment
    }
    
    func updateContentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment?) {
        self.contentHorizontalAlignment = contentHorizontalAlignment ?? self.contentHorizontalAlignment
    }
}

extension CMTStepper {
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



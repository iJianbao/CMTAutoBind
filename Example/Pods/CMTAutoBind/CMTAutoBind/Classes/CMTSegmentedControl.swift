//
//  CMTSegmentedControl.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/18.
//

import UIKit

open class CMTSegmentedControl: UISegmentedControl, CMTBindSegmentedControlBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindSegmentedControl(self)
    }()
    
    func updateIsMomentary(_ isMomentary: Bool?) {
        self.isMomentary = isMomentary ?? false
    }
    
    func updateApportionsSegmentWidthsByContent(_ apportionsSegmentWidthsByContent: Bool?) {
        self.apportionsSegmentWidthsByContent = apportionsSegmentWidthsByContent ?? false
    }

    func updateSelectedSegmentIndex(_ selectedSegmentIndex: Int?) {
        let index = self.selectedSegmentIndex
        self.selectedSegmentIndex = selectedSegmentIndex ?? index
    }
    
    
    @available(iOS 13.0, *)
    func updateSelectedSegmentTintColor(_ selectedSegmentTintColor: UIColor?) {
        self.selectedSegmentTintColor = selectedSegmentTintColor
    }
    
}

extension CMTSegmentedControl {
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

extension CMTSegmentedControl {
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



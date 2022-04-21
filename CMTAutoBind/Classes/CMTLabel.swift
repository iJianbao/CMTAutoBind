//
//  CMTLabel.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/15.
//

import UIKit

open class CMTLabel: UILabel, CMTLabelBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindLabel(self)
    }()
    
    func updateText(_ text: String?) {
        self.text = text
    }
    
    func updateAttributedText(_ attributedText: NSAttributedString?) {
        self.attributedText = attributedText
    }
    
    func updateFont(_ font: UIFont?) {
        self.font = font
    }
    
    func updateTextColor(_ color: UIColor?) {
        self.textColor = color
    }
    
    func updateShadowColor(_ color: UIColor?) {
        self.shadowColor = color
    }
    
    func updateShadowOffset(_ size: CGSize?) {
        self.shadowOffset = size ?? self.shadowOffset
    }
    
    func updateTextAlignment(_ textAlignment: NSTextAlignment?) {
        if #available(iOS 9.0, *) {
            self.textAlignment = textAlignment ?? self.textAlignment
        }else {
            self.textAlignment = textAlignment ?? self.textAlignment
        }
    }
    
    func updateLineBreakMode(_ lineBreakMode: NSLineBreakMode?) {
        self.lineBreakMode = lineBreakMode ?? self.lineBreakMode
    }
    
    deinit {
        print("\(self): \(#function)")
    }
}

extension CMTLabel {
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

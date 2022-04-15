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
        self.shadowOffset = size ?? CGSize(width: 0, height: -1)
    }
    
    func updateTextAlignment(_ textAlignment: NSTextAlignment?) {
        if #available(iOS 9.0, *) {
            self.textAlignment = textAlignment ?? .natural
        }else {
            self.textAlignment = textAlignment ?? .left
        }
    }
    
    func updateLineBreakMode(_ lineBreakMode: NSLineBreakMode?) {
        self.lineBreakMode = lineBreakMode ?? .byTruncatingTail
    }
    
    deinit {
        print("\(self): \(#function)")
    }
}

extension CMTLabel {
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

//
//  CMTButton.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/16.
//

import UIKit

open class CMTButton: UIButton, CMTBindButtonBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindButton(self)
    }()
    
    func updateNormalTitle(_ title: String?) {
        self.setTitle(title, for: .normal)
    }
    
    func updateHighlightedTitle(_ title: String?) {
        self.setTitle(title, for: .highlighted)
    }
    
    func updateDisabledTitle(_ title: String?) {
        self.setTitle(title, for: .disabled)
    }
    
    func updateSelectedTitle(_ title: String?) {
        self.setTitle(title, for: .selected)
    }
    
    func updateNormalTitleColor(_ color: UIColor?) {
        self.setTitleColor(color, for: .normal)
    }
    
    func updateHighlightedTitleColor(_ color: UIColor?) {
        self.setTitleColor(color, for: .highlighted)
    }
    
    func updateDisabledTitleColor(_ color: UIColor?) {
        self.setTitleColor(color, for: .disabled)
    }
    
    func updateSelectedTitleColor(_ color: UIColor?) {
        self.setTitleColor(color, for: .selected)
    }
    
    func updateNormalTitleShadowColor(_ color: UIColor?) {
        self.setTitleShadowColor(color, for: .normal)
    }
    
    func updateHighlightedTitleShadowColor(_ color: UIColor?) {
        self.setTitleShadowColor(color, for: .highlighted)
    }
    
    func updateDisabledTitleShadowColor(_ color: UIColor?) {
        self.setTitleShadowColor(color, for: .disabled)
    }
    
    func updateSelectedTitleShadowColor(_ color: UIColor?) {
        self.setTitleShadowColor(color, for: .selected)
    }
    
    func updateNormalImage(_ image: UIImage?) {
        self.setImage(image, for: .normal)
    }
    
    func updateHighlightedImage(_ image: UIImage?) {
        self.setImage(image, for: .highlighted)
    }
    
    func updateDisabledImage(_ image: UIImage?) {
        self.setImage(image, for: .disabled)
    }
    
    func updateSelectedImage(_ image: UIImage?) {
        self.setImage(image, for: .selected)
    }
    
    func updateNormalBackgroundImage(_ image: UIImage?) {
        self.setBackgroundImage(image, for: .normal)
    }
    
    func updateHighlightedBackgroundImage(_ image: UIImage?) {
        self.setBackgroundImage(image, for: .highlighted)
    }
    
    func updateDisabledBackgroundImage(_ image: UIImage?) {
        self.setBackgroundImage(image, for: .disabled)
    }
    
    func updateSelectedBackgroundImage(_ image: UIImage?) {
        self.setBackgroundImage(image, for: .selected)
    }
    
    @available(iOS 13.0, *)
    func updateNormalPreferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?) {
        self.setPreferredSymbolConfiguration(preferredSymbolConfiguration, forImageIn: .normal)
    }
    
    @available(iOS 13.0, *)
    func updateHighlightedPreferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?) {
        self.setPreferredSymbolConfiguration(preferredSymbolConfiguration, forImageIn: .highlighted)
    }
    
    @available(iOS 13.0, *)
    func updateDisabledPreferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?) {
        self.setPreferredSymbolConfiguration(preferredSymbolConfiguration, forImageIn: .disabled)
    }
    
    @available(iOS 13.0, *)
    func updateSelectedPreferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?) {
        self.setPreferredSymbolConfiguration(preferredSymbolConfiguration, forImageIn: .selected)
    }
    
    func updateNormalAttributedTitle(_ attributedTitle: NSAttributedString?) {
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    func updateHighlightedAttributedTitle(_ attributedTitle: NSAttributedString?) {
        self.setAttributedTitle(attributedTitle, for: .highlighted)
    }
    
    func updateDisabledAttributedTitle(_ attributedTitle: NSAttributedString?) {
        self.setAttributedTitle(attributedTitle, for: .disabled)
    }
    
    func updateSelectedAttributedTitle(_ attributedTitle: NSAttributedString?) {
        self.setAttributedTitle(attributedTitle, for: .selected)
    }
    
}

extension CMTButton {
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

extension CMTButton {
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


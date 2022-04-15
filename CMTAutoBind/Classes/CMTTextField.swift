//
//  CMTTextField.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/17.
//

import UIKit

open class CMTTextField: UITextField, CMTBindTextFieldBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindTextField(self)
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

    func updateTextAlignment(_ textAlignment: NSTextAlignment?) {
        if #available(iOS 9.0, *) {
            self.textAlignment = textAlignment ?? .natural
        }else {
            self.textAlignment = textAlignment ?? .left
        }
    }

    func updateBorderStyle(_ borderStyle: UITextField.BorderStyle?) {
        self.borderStyle = borderStyle ?? .none
    }
    
    func updateDefaultTextAttributes(_ defaultTextAttributes: [NSAttributedString.Key : Any]?) {
//        self.defaultTextAttributes = defaultTextAttributes ??  self.defaultTextAttributes
        if let array = defaultTextAttributes {
            var newArray: [String : Any] = [:]
            for d in array {
                newArray[d.key.rawValue] = d.value
            }
            self.defaultTextAttributes = newArray
        }else {
            self.defaultTextAttributes = self.defaultTextAttributes
        }
    }
    
    func updatePlaceholder(_ placeholder: String?) {
        self.placeholder = placeholder
    }
    
    func updateAttributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) {
        self.attributedPlaceholder = attributedPlaceholder
    }
    
    func updateClearsOnBeginEditing(_ clearsOnBeginEditing: Bool?) {
        self.clearsOnBeginEditing = clearsOnBeginEditing ?? false
    }

    func updateAdjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool?) {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth ?? false
    }

    func updateMinimumFontSize(_ minimumFontSize: CGFloat?) {
        self.minimumFontSize = minimumFontSize ?? 0.0
    }

    func updateDelegate(_ delegate: UITextFieldDelegate?) {
        self.delegate = delegate
    }
    
    func updateBackground(_ background: UIImage?) {
        self.background = background
    }
    
    func updateDisabledBackground(_ disabledBackground: UIImage?) {
        self.disabledBackground = disabledBackground
    }
    
    func updateAllowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool?) {
        self.allowsEditingTextAttributes = allowsEditingTextAttributes ?? false
    }
    
    func updateTypingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]?) {
//        self.typingAttributes = typingAttributes ?? self.typingAttributes
        if let array = typingAttributes {
            var newArray: [String : Any] = [:]
            for d in array {
                newArray[d.key.rawValue] = d.value
            }
            self.typingAttributes = newArray
        }else {
            self.typingAttributes = self.typingAttributes
        }
    }
    
    func updateClearButtonMode(_ clearButtonMode: UITextField.ViewMode?) {
        self.clearButtonMode = clearButtonMode ?? .never
    }
    
    func updateLeftView(_ leftView: UIView?) {
        self.leftView = leftView
    }
    
    func updateLeftViewMode(_ leftViewMode: UITextField.ViewMode?) {
        self.leftViewMode = leftViewMode ?? .never
    }
    
    func updateRightView(_ rightView: UIView?) {
        self.rightView = rightView
    }
    
    func updateRightViewMode(_ rightViewMode: UITextField.ViewMode?) {
        self.rightViewMode = rightViewMode ?? .never
    }
    
    func updateInputView(_ inputView: UIView?) {
        self.inputView = inputView
    }
    
    func updateInputAccessoryView(_ inputAccessoryView: UIView?) {
        self.inputAccessoryView = inputAccessoryView
    }

    func updateClearsOnInsertion(_ clearsOnInsertion: Bool?) {
        self.clearsOnInsertion = clearsOnInsertion ?? false
    }
}

extension CMTTextField {
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

extension CMTTextField {
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
        self.addGestureRecognizer(tap)
    }
}

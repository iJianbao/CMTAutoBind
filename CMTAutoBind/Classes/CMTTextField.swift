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
            self.textAlignment = textAlignment ?? self.textAlignment
        }else {
            self.textAlignment = textAlignment ?? self.textAlignment
        }
    }

    func updateBorderStyle(_ borderStyle: UITextField.BorderStyle?) {
        self.borderStyle = borderStyle ?? self.borderStyle
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
        self.clearsOnBeginEditing = clearsOnBeginEditing ?? self.clearsOnBeginEditing
    }

    func updateAdjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool?) {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth ?? self.adjustsFontSizeToFitWidth
    }

    func updateMinimumFontSize(_ minimumFontSize: CGFloat?) {
        self.minimumFontSize = minimumFontSize ?? self.minimumFontSize
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
        self.allowsEditingTextAttributes = allowsEditingTextAttributes ?? self.allowsEditingTextAttributes
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
        self.clearButtonMode = clearButtonMode ?? self.clearButtonMode
    }
    
    func updateLeftView(_ leftView: UIView?) {
        self.leftView = leftView
    }
    
    func updateLeftViewMode(_ leftViewMode: UITextField.ViewMode?) {
        self.leftViewMode = leftViewMode ?? self.leftViewMode
    }
    
    func updateRightView(_ rightView: UIView?) {
        self.rightView = rightView
    }
    
    func updateRightViewMode(_ rightViewMode: UITextField.ViewMode?) {
        self.rightViewMode = rightViewMode ?? self.rightViewMode
    }
    
    func updateInputView(_ inputView: UIView?) {
        self.inputView = inputView
    }
    
    func updateInputAccessoryView(_ inputAccessoryView: UIView?) {
        self.inputAccessoryView = inputAccessoryView
    }

    func updateClearsOnInsertion(_ clearsOnInsertion: Bool?) {
        self.clearsOnInsertion = clearsOnInsertion ?? self.clearsOnInsertion
    }
}

extension CMTTextField {
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

extension CMTTextField {
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

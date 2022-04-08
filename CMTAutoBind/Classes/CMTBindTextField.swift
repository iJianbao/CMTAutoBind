//
//  CMTBindTextField.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/17.
//

import UIKit

protocol CMTBindTextFieldBindUpdateProtocol: CMTControlBindUpdateProtocol {
    func updateText(_ text: String?)
    func updateAttributedText(_ attributedText: NSAttributedString?)
    func updateFont(_ font: UIFont?)
    func updateTextColor(_ color: UIColor?)
    func updateTextAlignment(_ textAlignment: NSTextAlignment?)
    func updateBorderStyle(_ borderStyle: UITextField.BorderStyle?)
    func updateDefaultTextAttributes(_ defaultTextAttributes: [NSAttributedString.Key : Any]?)
    func updatePlaceholder(_ placeholder: String?)
    func updateAttributedPlaceholder(_ attributedPlaceholder: NSAttributedString?)
    func updateClearsOnBeginEditing(_ clearsOnBeginEditing: Bool?)
    func updateAdjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool?)
    func updateMinimumFontSize(_ minimumFontSize: CGFloat?)
    func updateDelegate(_ delegate: UITextFieldDelegate?)
    func updateBackground(_ background: UIImage?)
    func updateDisabledBackground(_ disabledBackground: UIImage?)
    func updateAllowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool?)
    func updateTypingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]?)
    func updateClearButtonMode(_ clearButtonMode: UITextField.ViewMode?)
    func updateLeftView(_ leftView: UIView?)
    func updateLeftViewMode(_ leftViewMode: UITextField.ViewMode?)
    func updateRightView(_ rightView: UIView?)
    func updateRightViewMode(_ rightViewMode: UITextField.ViewMode?)
    func updateInputView(_ inputView: UIView?)
    func updateInputAccessoryView(_ inputAccessoryView: UIView?)
    func updateClearsOnInsertion(_ clearsOnInsertion: Bool?)
}

open class CMTBindTextField: CMTBindControl {
    
    init(_ over: CMTBindTextFieldBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var text: CMTObserver<String>? {
        didSet {
            bindMediator(oldValue, observer: text) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateText(t)
            }
        }
    }
    
    public weak var attributedText: CMTObserver<NSAttributedString>? {
        didSet {
            bindMediator(oldValue, observer: attributedText) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateAttributedText(t)
            }
        }
    }
    
    public weak var font: CMTObserver<UIFont>? {
        didSet {
            bindMediator(oldValue, observer: font) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateFont(t)
            }
        }
    }
    
    public weak var color: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: color) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateTextColor(t)
            }
        }
    }
    
    public weak var textAlignment: CMTObserver<NSTextAlignment>? {
        didSet {
            bindMediator(oldValue, observer: textAlignment) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateTextAlignment(t)
            }
        }
    }
    
    public weak var borderStyle: CMTObserver<UITextField.BorderStyle>? {
        didSet {
            bindMediator(oldValue, observer: borderStyle) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateBorderStyle(t)
            }
        }
    }
    
    public weak var defaultTextAttributes: CMTObserver<[NSAttributedString.Key : Any]>? {
        didSet {
            bindMediator(oldValue, observer: defaultTextAttributes) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateDefaultTextAttributes(t)
            }
        }
    }
    
    public weak var placeholder: CMTObserver<String>? {
        didSet {
            bindMediator(oldValue, observer: placeholder) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updatePlaceholder(t)
            }
        }
    }
    
    public weak var attributedPlaceholder: CMTObserver<NSAttributedString>? {
        didSet {
            bindMediator(oldValue, observer: attributedPlaceholder) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateAttributedPlaceholder(t)
            }
        }
    }
    
    public weak var clearsOnBeginEditing: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: clearsOnBeginEditing) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateClearsOnBeginEditing(t)
            }
        }
    }
    
    public weak var adjustsFontSizeToFitWidth: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: adjustsFontSizeToFitWidth) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateAdjustsFontSizeToFitWidth(t)
            }
        }
    }
    
    public weak var minimumFontSize: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: minimumFontSize) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateMinimumFontSize(t)
            }
        }
    }
    
    public weak var delegate: CMTObserver<UITextFieldDelegate>? {
        didSet {
            bindMediator(oldValue, observer: delegate) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateDelegate(t)
            }
        }
    }
    
    public weak var background: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: background) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateBackground(t)
            }
        }
    }
    
    public weak var disabledBackground: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: disabledBackground) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateDisabledBackground(t)
            }
        }
    }
    
    public weak var allowsEditingTextAttributes: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: allowsEditingTextAttributes) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateAllowsEditingTextAttributes(t)
            }
        }
    }
    
    public weak var typingAttributes: CMTObserver<[NSAttributedString.Key : Any]>? {
        didSet {
            bindMediator(oldValue, observer: typingAttributes) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateTypingAttributes(t)
            }
        }
    }
    
    public weak var clearButtonMode: CMTObserver<UITextField.ViewMode>? {
        didSet {
            bindMediator(oldValue, observer: clearButtonMode) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateClearButtonMode(t)
            }
        }
    }
    
    public weak var leftView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: leftView) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateLeftView(t)
            }
        }
    }
    
    public weak var leftViewMode: CMTObserver<UITextField.ViewMode>? {
        didSet {
            bindMediator(oldValue, observer: leftViewMode) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateLeftViewMode(t)
            }
        }
    }
    
    public weak var rightView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: rightView) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateRightView(t)
            }
        }
    }
    
    public weak var rightViewMode: CMTObserver<UITextField.ViewMode>? {
        didSet {
            bindMediator(oldValue, observer: rightViewMode) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateRightViewMode(t)
            }
        }
    }
    
    public weak var inputView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: inputView) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateInputView(t)
            }
        }
    }
    
    public weak var inputAccessoryView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: inputAccessoryView) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateInputAccessoryView(t)
            }
        }
    }
    
    public weak var clearsOnInsertion: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: clearsOnInsertion) {[weak self] t in
                (self?.bindOver as? CMTBindTextFieldBindUpdateProtocol)?.updateClearsOnInsertion(t)
            }
        }
    }
    
}

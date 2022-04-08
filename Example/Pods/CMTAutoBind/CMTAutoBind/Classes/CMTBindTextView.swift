//
//  CMTBindTextView.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/17.
//

import UIKit

protocol CMTBindTextViewBindUpdateProtocol: CMTBindScrollViewBindUpdateProtocol {
    func updateText(_ text: String?)
    func updateFont(_ font: UIFont?)
    func updateTextColor(_ textColor: UIColor?)
    func updateTextAlignment(_ textAlignment: NSTextAlignment?)
    func updateSelectedRange(_ selectedRange: NSRange?)
    func updateIsEditable(_ isEditable: Bool?)
    func updateIsSelectable(_ isSelectable: Bool?)
    func updateDataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes?)
    func updateAllowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool?)
    func updateAttributedText(_ attributedText: NSAttributedString?)
    func updateTypingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]?)
    func updateInputView(_ inputView: UIView?)
    func updateInputAccessoryView(_ inputAccessoryView: UIView?)
    func updateClearsOnInsertion(_ clearsOnInsertion: Bool?)
    func updateTextContainerInset(_ textContainerInset: UIEdgeInsets?)
    func updateLinkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]?)
    
    @available(iOS 13.0, *)
    func updateUsesStandardTextScaling(_ usesStandardTextScaling: Bool?)
    @available(iOS 15.0, *)
    func updateInteractionState(_ interactionState: Any?)
    
    func updateTextViewDelegate(_ delegate: UITextViewDelegate?)
}

open class CMTBindTextView: CMTBindScrollView {

    init(_ over: CMTBindTextViewBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var text: CMTObserver<String>? {
        didSet {
            bindMediator(oldValue, observer: text) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateText(t)
            }
        }
    }
    
    public weak var font: CMTObserver<UIFont>? {
        didSet {
            bindMediator(oldValue, observer: font) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateFont(t)
            }
        }
    }
    
    public weak var textColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: textColor) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateTextColor(t)
            }
        }
    }
    
    public weak var textAlignment: CMTObserver<NSTextAlignment>? {
        didSet {
            bindMediator(oldValue, observer: textAlignment) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateTextAlignment(t)
            }
        }
    }
    
    public weak var selectedRange: CMTObserver<NSRange>? {
        didSet {
            bindMediator(oldValue, observer: selectedRange) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateSelectedRange(t)
            }
        }
    }
    
    public weak var isEditable: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isEditable) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateIsEditable(t)
            }
        }
    }
    
    public weak var isSelectable: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isSelectable) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateIsSelectable(t)
            }
        }
    }
    
    public weak var dataDetectorTypes: CMTObserver<UIDataDetectorTypes>? {
        didSet {
            bindMediator(oldValue, observer: dataDetectorTypes) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateDataDetectorTypes(t)
            }
        }
    }
    
    public weak var allowsEditingTextAttributes: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: allowsEditingTextAttributes) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateAllowsEditingTextAttributes(t)
            }
        }
    }
    
    public weak var attributedText: CMTObserver<NSAttributedString>? {
        didSet {
            bindMediator(oldValue, observer: attributedText) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateAttributedText(t)
            }
        }
    }
    
    public weak var typingAttributes: CMTObserver<[NSAttributedString.Key : Any]>? {
        didSet {
            bindMediator(oldValue, observer: typingAttributes) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateTypingAttributes(t)
            }
        }
    }
    
    public weak var inputView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: inputView) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateInputView(t)
            }
        }
    }
    
    public weak var inputAccessoryView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: inputAccessoryView) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateInputAccessoryView(t)
            }
        }
    }
    
    public weak var clearsOnInsertion: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: clearsOnInsertion) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateClearsOnInsertion(t)
            }
        }
    }
    
    public weak var textContainerInset: CMTObserver<UIEdgeInsets>? {
        didSet {
            bindMediator(oldValue, observer: textContainerInset) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateTextContainerInset(t)
            }
        }
    }
    
    public weak var linkTextAttributes: CMTObserver<[NSAttributedString.Key : Any]>? {
        didSet {
            bindMediator(oldValue, observer: linkTextAttributes) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateLinkTextAttributes(t)
            }
        }
    }
    
    private weak var _usesStandardTextScaling: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: _usesStandardTextScaling) {[weak self] t in
                if #available(iOS 13.0, *) {
                    (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateUsesStandardTextScaling(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    private weak var _interactionState: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _interactionState) {[weak self] t in
                if #available(iOS 15.0, *) {
                    (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateInteractionState(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    public weak var delegateTextView: CMTObserver<UITextViewDelegate>? {
        didSet {
            bindMediator(oldValue, observer: delegateTextView) {[weak self] t in
                (self?.bindOver as? CMTBindTextViewBindUpdateProtocol)?.updateTextViewDelegate(t)
            }
        }
    }
}

extension CMTBindTextView {
    @available(iOS 13.0, *)
    public var usesStandardTextScaling: CMTObserver<Bool>? {
        get {
            return _usesStandardTextScaling
        }
        set {
            _usesStandardTextScaling = newValue
        }
    }
    
    @available(iOS 15.0, *)
    public var interactionState: CMTObserver<Any>? {
        get {
            return _interactionState
        }
        set {
            _interactionState = newValue
        }
    }
    
}

//
//  CMTBindLable.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/15.
//

import UIKit

protocol CMTLabelBindUpdateProtocol: CMTViewBindUpdateProtocol {
    func updateText(_ text: String?)
    func updateAttributedText(_ attributedText: NSAttributedString?)
    func updateFont(_ font: UIFont?)
    func updateTextColor(_ color: UIColor?)
    func updateShadowColor(_ color: UIColor?)
    func updateShadowOffset(_ size: CGSize?)
    func updateTextAlignment(_ textAlignment: NSTextAlignment?)
    func updateLineBreakMode(_ lineBreakMode: NSLineBreakMode?)
}

open class CMTBindLabel: CMTBindView {

    init(_ over: CMTLabelBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var text: CMTObserver<String>? {
        didSet {
            bindMediator(oldValue, observer: text) {[weak self] t in
                (self?.bindOver as? CMTLabelBindUpdateProtocol)?.updateText(t)
            }
        }
    }
    
    public weak var attributedText: CMTObserver<NSAttributedString>? {
        didSet {
            bindMediator(oldValue, observer: attributedText) {[weak self] t in
                (self?.bindOver as? CMTLabelBindUpdateProtocol)?.updateAttributedText(t)
            }
        }
    }
    
    public weak var font: CMTObserver<UIFont>? {
        didSet {
            bindMediator(oldValue, observer: font) {[weak self] t in
                (self?.bindOver as? CMTLabelBindUpdateProtocol)?.updateFont(t)
            }
        }
    }
    
    public weak var textColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: textColor) {[weak self] t in
                (self?.bindOver as? CMTLabelBindUpdateProtocol)?.updateTextColor(t)
            }
        }
    }
    
    public weak var shadowColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: shadowColor) {[weak self] t in
                (self?.bindOver as? CMTLabelBindUpdateProtocol)?.updateShadowColor(t)
            }
        }
    }
    
    public weak var shadowOffset: CMTObserver<CGSize>? {
        didSet {
            bindMediator(oldValue, observer: shadowOffset) {[weak self] t in
                (self?.bindOver as? CMTLabelBindUpdateProtocol)?.updateShadowOffset(t)
            }
        }
    }
    
    public weak var textAlignment: CMTObserver<NSTextAlignment>? {
        didSet {
            bindMediator(oldValue, observer: textAlignment) {[weak self] t in
                (self?.bindOver as? CMTLabelBindUpdateProtocol)?.updateTextAlignment(t)
            }
        }
    }
    
    public weak var lineBreakMode: CMTObserver<NSLineBreakMode>? {
        didSet {
            bindMediator(oldValue, observer: lineBreakMode) {[weak self] t in
                (self?.bindOver as? CMTLabelBindUpdateProtocol)?.updateLineBreakMode(t)
            }
        }
    }
    
    deinit {
        debugPrint("\(self): \(#function)")
    }
}

//
//  CMTBindButton.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/16.
//

import UIKit

protocol CMTBindButtonBindUpdateProtocol: CMTControlBindUpdateProtocol {
    func updateNormalTitle(_ title: String?)
    func updateHighlightedTitle(_ title: String?)
    func updateDisabledTitle(_ title: String?)
    func updateSelectedTitle(_ title: String?)
    
    func updateNormalImage(_ image: UIImage?)
    func updateHighlightedImage(_ image: UIImage?)
    func updateDisabledImage(_ image: UIImage?)
    func updateSelectedImage(_ image: UIImage?)
    
    func updateNormalTitleColor(_ color: UIColor?)
    func updateHighlightedTitleColor(_ color: UIColor?)
    func updateDisabledTitleColor(_ color: UIColor?)
    func updateSelectedTitleColor(_ color: UIColor?)
    
    func updateNormalTitleShadowColor(_ color: UIColor?)
    func updateHighlightedTitleShadowColor(_ color: UIColor?)
    func updateDisabledTitleShadowColor(_ color: UIColor?)
    func updateSelectedTitleShadowColor(_ color: UIColor?)
    
    func updateNormalBackgroundImage(_ image: UIImage?)
    func updateHighlightedBackgroundImage(_ image: UIImage?)
    func updateDisabledBackgroundImage(_ image: UIImage?)
    func updateSelectedBackgroundImage(_ image: UIImage?)
    
    @available(iOS 13.0, *)
    func updateNormalPreferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?)
    @available(iOS 13.0, *)
    func updateHighlightedPreferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?)
    @available(iOS 13.0, *)
    func updateDisabledPreferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?)
    @available(iOS 13.0, *)
    func updateSelectedPreferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?)
    
    func updateNormalAttributedTitle(_ attributedTitle: NSAttributedString?)
    func updateHighlightedAttributedTitle(_ attributedTitle: NSAttributedString?)
    func updateDisabledAttributedTitle(_ attributedTitle: NSAttributedString?)
    func updateSelectedAttributedTitle(_ attributedTitle: NSAttributedString?)
}


open class CMTBindButton: CMTBindControl {

    init(_ over: CMTBindButtonBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var normalTitle: CMTObserver<String>? {
        didSet {
            bindMediator(oldValue, observer: normalTitle) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateNormalTitle(t)
            }
        }
    }
    
    public weak var highlightedTitle: CMTObserver<String>? {
        didSet {
            bindMediator(oldValue, observer: highlightedTitle) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateHighlightedTitle(t)
            }
        }
    }
    
    public weak var disabledTitle: CMTObserver<String>? {
        didSet {
            bindMediator(oldValue, observer: disabledTitle) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateDisabledTitle(t)
            }
        }
    }
    
    public weak var selectedTitle: CMTObserver<String>? {
        didSet {
            bindMediator(oldValue, observer: selectedTitle) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateSelectedTitle(t)
            }
        }
    }
    
    public weak var normalImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: normalImage) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateNormalImage(t)
            }
        }
    }
    
    public weak var highlightedImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: highlightedImage) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateHighlightedImage(t)
            }
        }
    }
    
    public weak var disabledImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: disabledImage) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateDisabledImage(t)
            }
        }
    }
    
    public weak var selectedImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: selectedImage) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateSelectedImage(t)
            }
        }
    }
    
    public weak var normalTitleColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: normalTitleColor) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateNormalTitleColor(t)
            }
        }
    }
    
    public weak var highlightedTitleColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: highlightedTitleColor) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateHighlightedTitleColor(t)
            }
        }
    }
    
    public weak var disabledTitleColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: disabledTitleColor) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateDisabledTitleColor(t)
            }
        }
    }
    
    public weak var selectedTitleColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: selectedTitleColor) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateSelectedTitleColor(t)
            }
        }
    }
    
    public weak var normalTitleShadowColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: normalTitleShadowColor) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateNormalTitleShadowColor(t)
            }
        }
    }
    
    public weak var highlightedTitleShadowColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: highlightedTitleShadowColor) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateHighlightedTitleShadowColor(t)
            }
        }
    }
    
    public weak var disabledTitleShadowColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: disabledTitleShadowColor) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateDisabledTitleShadowColor(t)
            }
        }
    }
    
    public weak var selectedTitleShadowColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: selectedTitleShadowColor) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateSelectedTitleShadowColor(t)
            }
        }
    }
    
    public weak var normalBackgroundImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: normalBackgroundImage) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateNormalBackgroundImage(t)
            }
        }
    }
    
    public weak var highlightedBackgroundImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: highlightedBackgroundImage) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateHighlightedBackgroundImage(t)
            }
        }
    }
    
    public weak var disabledBackgroundImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: disabledBackgroundImage) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateDisabledBackgroundImage(t)
            }
        }
    }
    
    public weak var selectedBackgroundImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: selectedBackgroundImage) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateSelectedBackgroundImage(t)
            }
        }
    }
    
    private weak var _normalPreferredSymbolConfiguration: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _normalPreferredSymbolConfiguration) {[weak self] t in
                if #available(iOS 13.0, *) {
                    (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateNormalPreferredSymbolConfiguration(t as? UIImage.SymbolConfiguration)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    private weak var _highlightedPreferredSymbolConfiguration: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _highlightedPreferredSymbolConfiguration) {[weak self] t in
                if #available(iOS 13.0, *) {
                    (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateHighlightedPreferredSymbolConfiguration(t as? UIImage.SymbolConfiguration)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    private weak var _disabledPreferredSymbolConfiguration: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _disabledPreferredSymbolConfiguration) {[weak self] t in
                if #available(iOS 13.0, *) {
                    (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateDisabledPreferredSymbolConfiguration(t as? UIImage.SymbolConfiguration)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    private weak var _selectedPreferredSymbolConfiguration: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _selectedPreferredSymbolConfiguration) {[weak self] t in
                if #available(iOS 13.0, *) {
                    (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateSelectedPreferredSymbolConfiguration(t as? UIImage.SymbolConfiguration)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    public weak var normalAttributedTitle: CMTObserver<NSAttributedString>? {
        didSet {
            bindMediator(oldValue, observer: normalAttributedTitle) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateNormalAttributedTitle(t)
            }
        }
    }
    
    public weak var highlightedAttributedTitle: CMTObserver<NSAttributedString>? {
        didSet {
            bindMediator(oldValue, observer: highlightedAttributedTitle) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateHighlightedAttributedTitle(t)
            }
        }
    }
    
    public weak var disabledAttributedTitle: CMTObserver<NSAttributedString>? {
        didSet {
            bindMediator(oldValue, observer: disabledAttributedTitle) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateDisabledAttributedTitle(t)
            }
        }
    }
    
    public weak var selectedAttributedTitle: CMTObserver<NSAttributedString>? {
        didSet {
            bindMediator(oldValue, observer: selectedAttributedTitle) {[weak self] t in
                (self?.bindOver as? CMTBindButtonBindUpdateProtocol)?.updateSelectedAttributedTitle(t)
            }
        }
    }
}

extension CMTBindButton {
    @available(iOS 13.0, *)
    public var normalPreferredSymbolConfiguration: CMTObserver<Any>? {
        get {
            return _normalPreferredSymbolConfiguration
        }
        set {
            if newValue?.value is UIImage.SymbolConfiguration {
                _normalPreferredSymbolConfiguration = newValue
            }else {
                assert(false, "value 类型必须为 UIImage.SymbolConfiguration")
            }
        }
    }
    
    @available(iOS 13.0, *)
    public var highlightedPreferredSymbolConfiguration: CMTObserver<Any>? {
        get {
            return _highlightedPreferredSymbolConfiguration
        }
        set {
            if newValue?.value is UIImage.SymbolConfiguration {
                _highlightedPreferredSymbolConfiguration = newValue
            }else {
                assert(false, "value 类型必须为 UIImage.SymbolConfiguration")
            }
        }
    }
    
    @available(iOS 13.0, *)
    public var disabledPreferredSymbolConfiguration: CMTObserver<Any>? {
        get {
            return _disabledPreferredSymbolConfiguration
        }
        set {
            if newValue?.value is UIImage.SymbolConfiguration {
                _disabledPreferredSymbolConfiguration = newValue
            }else {
                assert(false, "value 类型必须为 UIImage.SymbolConfiguration")
            }
        }
    }
    
    @available(iOS 13.0, *)
    public var selectedPreferredSymbolConfiguration: CMTObserver<Any>? {
        get {
            return _selectedPreferredSymbolConfiguration
        }
        set {
            if newValue?.value is UIImage.SymbolConfiguration {
                _selectedPreferredSymbolConfiguration = newValue
            }else {
                assert(false, "value 类型必须为 UIImage.SymbolConfiguration")
            }
        }
    }
}

//
//  CMTBindSwitch.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/18.
//

import UIKit

protocol CMTBindSwitchBindUpdateProtocol: CMTControlBindUpdateProtocol {
    func updateOnTintColor(_ onTintColor: UIColor?)
    func updateThumbTintColor(_ thumbTintColor: UIColor?)
    func updateOnImage(_ onImage: UIImage?)
    func updateOffImage(_ offImage: UIImage?)
    @available(iOS 14.0, *)
    func updateTitle(_ title: String?)
    @available(iOS 14.0, *)
    func updatePreferredStyle(_ preferredStyle: UISwitch.Style?)
    func updateIsOn(_ isOn: Bool?)
}

open class CMTBindSwitch: CMTBindControl {
    
    init(_ over: CMTBindSwitchBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var onTintColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: onTintColor) {[weak self] t in
                (self?.bindOver as? CMTBindSwitchBindUpdateProtocol)?.updateOnTintColor(t)
            }
        }
    }
    
    public weak var thumbTintColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: thumbTintColor) {[weak self] t in
                (self?.bindOver as? CMTBindSwitchBindUpdateProtocol)?.updateThumbTintColor(t)
            }
        }
    }
    
    public weak var onImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: onImage) {[weak self] t in
                (self?.bindOver as? CMTBindSwitchBindUpdateProtocol)?.updateOnImage(t)
            }
        }
    }
    
    public weak var offImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: offImage) {[weak self] t in
                (self?.bindOver as? CMTBindSwitchBindUpdateProtocol)?.updateOffImage(t)
            }
        }
    }

    private weak var _title: CMTObserver<String>? {
        didSet {
            bindMediator(oldValue, observer: _title) {[weak self] t in
                if #available(iOS 14.0, *) {
                    (self?.bindOver as? CMTBindSwitchBindUpdateProtocol)?.updateTitle(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }

    private weak var _preferredStyle: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _preferredStyle) {[weak self] t in
                if #available(iOS 14.0, *) {
                    (self?.bindOver as? CMTBindSwitchBindUpdateProtocol)?.updatePreferredStyle(t as? UISwitch.Style)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    public weak var isOn: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isOn) {[weak self] t in
                (self?.bindOver as? CMTBindSwitchBindUpdateProtocol)?.updateIsOn(t)
            }
        }
    }
    
}


extension CMTBindSwitch {
    @available(iOS 14.0, *)
    var title: CMTObserver<String>? {
        get {
            return _title
        }
        set {
            _title = newValue
        }
    }
    
    @available(iOS 14.0, *)
    var preferredStyle: CMTObserver<Any>? {
        get {
            return _preferredStyle
        }
        set {
            if newValue?.value is UISwitch.Style {
                _preferredStyle = newValue
            }else {
                assert(false, "value 类型必须为 UISwitch.Style")
            }
        }
    }
}

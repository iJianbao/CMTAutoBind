//
//  CMTBindControl.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/16.
//

import UIKit

protocol CMTControlBindUpdateProtocol: CMTViewBindUpdateProtocol {
    func updateIsEnabled(_ isEnabled: Bool?)
    func updateIsSelected(_ isSelected: Bool?)
    func updateIsHighlighted(_ isHighlighted: Bool?)
    func updateContentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment?)
    func updateContentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment?)
}

open class CMTBindControl: CMTBindView {
    
    init(_ over: CMTControlBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var isEnabled: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isEnabled) {[weak self] t in
                (self?.bindOver as? CMTControlBindUpdateProtocol)?.updateIsEnabled(t)
            }
        }
    }
    
    public weak var isSelected: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isSelected) {[weak self] t in
                (self?.bindOver as? CMTControlBindUpdateProtocol)?.updateIsSelected(t)
            }
        }
    }
    
    public weak var isHighlighted: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isHighlighted) {[weak self] t in
                (self?.bindOver as? CMTControlBindUpdateProtocol)?.updateIsHighlighted(t)
            }
        }
    }
    
    public weak var contentVerticalAlignment: CMTObserver<UIControl.ContentVerticalAlignment>? {
        didSet {
            bindMediator(oldValue, observer: contentVerticalAlignment) {[weak self] t in
                (self?.bindOver as? CMTControlBindUpdateProtocol)?.updateContentVerticalAlignment(t)
            }
        }
    }
    
    public weak var contentHorizontalAlignment: CMTObserver<UIControl.ContentHorizontalAlignment>? {
        didSet {
            bindMediator(oldValue, observer: contentHorizontalAlignment) {[weak self] t in
                (self?.bindOver as? CMTControlBindUpdateProtocol)?.updateContentHorizontalAlignment(t)
            }
        }
    }
}


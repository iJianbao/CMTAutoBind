//
//  CMTBindTableViewCell.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/22.
//

import UIKit

protocol CMTBindTableViewCellBindUpdateProtocol: CMTViewBindUpdateProtocol {
    @available(iOS 14.0, *)
    func updateAutomaticallyUpdatesContentConfiguration(_ automaticallyUpdatesContentConfiguration: Bool?)
    @available(iOS 14.0, *)
    func updateAutomaticallyUpdatesBackgroundConfiguration(_ automaticallyUpdatesBackgroundConfiguration: Bool?)
    func updateBackgroundView(_ backgroundView: UIView?)
    func updateSelectedBackgroundView(_ selectedBackgroundView: UIView?)
    func updateMultipleSelectionBackgroundView(_ multipleSelectionBackgroundView: UIView?)
    func updateSelectionStyle(_ selectionStyle: UITableViewCell.SelectionStyle?)
    func updateIsSelected(_ isSelected: Bool?)
    func updateIsHighlighted(_ isHighlighted: Bool?)
    func updateShowsReorderControl(_ showsReorderControl: Bool?)
    func updateShouldIndentWhileEditing(_ shouldIndentWhileEditing: Bool?)
    func updateAccessoryType(_ accessoryType: UITableViewCell.AccessoryType?)
    func updateAccessoryView(_ accessoryView: UIView?)
    func updateEditingAccessoryType(_ editingAccessoryType: UITableViewCell.AccessoryType?)
    func updateEditingAccessoryView(_ editingAccessoryView: UIView?)
    func updateIndentationLevel(_ indentationLevel: Int?)
    func updateIndentationWidth(_ indentationWidth: CGFloat?)
    func updateSeparatorInset(_ separatorInset: UIEdgeInsets?)
    func updateIsEditing(_ isEditing: Bool?)
    @available(iOS 9.0, *)
    func updateFocusStyle(_ focusStyle: UITableViewCell.FocusStyle?)
    @available(iOS 11.0, *)
    func updateUserInteractionEnabledWhileDragging(_ userInteractionEnabledWhileDragging: Bool?)
}

open class CMTBindTableViewCell: CMTBindView {
    init(_ over: CMTBindTableViewCellBindUpdateProtocol) {
        super.init(over)
    }
    
    private weak var _automaticallyUpdatesContentConfiguration: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: _automaticallyUpdatesContentConfiguration) {[weak self] t in
                if #available(iOS 14.0, *) {
                    (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateAutomaticallyUpdatesContentConfiguration(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }

    private weak var _automaticallyUpdatesBackgroundConfiguration: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: _automaticallyUpdatesBackgroundConfiguration) {[weak self] t in
                if #available(iOS 14.0, *) {
                    (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateAutomaticallyUpdatesBackgroundConfiguration(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    public weak var backgroundView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: backgroundView) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateBackgroundView(t)
            }
        }
    }
    
    public weak var selectedBackgroundView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: selectedBackgroundView) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateSelectedBackgroundView(t)
            }
        }
    }
    
    public weak var multipleSelectionBackgroundView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: multipleSelectionBackgroundView) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateMultipleSelectionBackgroundView(t)
            }
        }
    }
    
    public weak var selectionStyle: CMTObserver<UITableViewCell.SelectionStyle>? {
        didSet {
            bindMediator(oldValue, observer: selectionStyle) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateSelectionStyle(t)
            }
        }
    }
    
    public weak var isSelected: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isSelected) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateIsSelected(t)
            }
        }
    }
    
    public weak var isHighlighted: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isHighlighted) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateIsHighlighted(t)
            }
        }
    }
    
    public weak var showsReorderControl: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: showsReorderControl) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateShowsReorderControl(t)
            }
        }
    }
    
    public weak var shouldIndentWhileEditing: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: shouldIndentWhileEditing) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateShouldIndentWhileEditing(t)
            }
        }
    }
    
    public weak var accessoryType: CMTObserver<UITableViewCell.AccessoryType>? {
        didSet {
            bindMediator(oldValue, observer: accessoryType) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateAccessoryType(t)
            }
        }
    }
    
    public weak var accessoryView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: accessoryView) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateAccessoryView(t)
            }
        }
    }
    
    public weak var editingAccessoryType: CMTObserver<UITableViewCell.AccessoryType>? {
        didSet {
            bindMediator(oldValue, observer: editingAccessoryType) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateEditingAccessoryType(t)
            }
        }
    }
    
    public weak var editingAccessoryView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: editingAccessoryView) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateEditingAccessoryView(t)
            }
        }
    }
    
    public weak var indentationLevel: CMTObserver<Int>? {
        didSet {
            bindMediator(oldValue, observer: indentationLevel) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateIndentationLevel(t)
            }
        }
    }
    
    public weak var indentationWidth: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: indentationWidth) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateIndentationWidth(t)
            }
        }
    }
    
    public weak var separatorInset: CMTObserver<UIEdgeInsets>? {
        didSet {
            bindMediator(oldValue, observer: separatorInset) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateSeparatorInset(t)
            }
        }
    }
    
    public weak var isEditing: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isEditing) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateIsEditing(t)
            }
        }
    }
    
    private weak var _focusStyle: CMTObserver<UITableViewCell.FocusStyle>? {
        didSet {
            bindMediator(oldValue, observer: _focusStyle) {[weak self] t in
                if #available(iOS 9.0, *) {
                    (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateFocusStyle(t)
                }else {
                    
                }
            }
        }
    }
    
    private weak var _userInteractionEnabledWhileDragging: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: _userInteractionEnabledWhileDragging) {[weak self] t in
                if #available(iOS 11.0, *) {
                    (self?.bindOver as? CMTBindTableViewCellBindUpdateProtocol)?.updateUserInteractionEnabledWhileDragging(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
}

extension CMTBindTableViewCell {
    @available(iOS 14.0, *)
    public var automaticallyUpdatesContentConfiguration: CMTObserver<Bool>? {
        get {
            return _automaticallyUpdatesContentConfiguration
        }
        set {
            _automaticallyUpdatesContentConfiguration = newValue
        }
    }
    
    @available(iOS 14.0, *)
    public var automaticallyUpdatesBackgroundConfiguration: CMTObserver<Bool>? {
        get {
            return _automaticallyUpdatesBackgroundConfiguration
        }
        set {
            _automaticallyUpdatesBackgroundConfiguration = newValue
        }
    }
    
    @available(iOS 9.0, *)
    public var focusStyle: CMTObserver<UITableViewCell.FocusStyle>? {
        get {
            return _focusStyle
        }
        set {
            _focusStyle = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var userInteractionEnabledWhileDragging: CMTObserver<Bool>? {
        get {
            return _userInteractionEnabledWhileDragging
        }
        set {
            _userInteractionEnabledWhileDragging = newValue
        }
    }
}

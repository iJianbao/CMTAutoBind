//
//  CMTTableViewCell.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/22.
//

import UIKit

open class CMTTableViewCell: UITableViewCell, CMTBindTableViewCellBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindTableViewCell(self)
    }()

    @available(iOS 14.0, *)
    func updateAutomaticallyUpdatesContentConfiguration(_ automaticallyUpdatesContentConfiguration: Bool?) {
        self.automaticallyUpdatesContentConfiguration = automaticallyUpdatesContentConfiguration ?? self.automaticallyUpdatesContentConfiguration
    }

    @available(iOS 14.0, *)
    func updateAutomaticallyUpdatesBackgroundConfiguration(_ automaticallyUpdatesBackgroundConfiguration: Bool?) {
        self.automaticallyUpdatesBackgroundConfiguration = automaticallyUpdatesBackgroundConfiguration ?? self.automaticallyUpdatesBackgroundConfiguration
    }

    func updateBackgroundView(_ backgroundView: UIView?) {
        self.backgroundView = backgroundView
    }
    
    func updateSelectedBackgroundView(_ selectedBackgroundView: UIView?) {
        self.selectedBackgroundView = selectedBackgroundView
    }
    
    func updateMultipleSelectionBackgroundView(_ multipleSelectionBackgroundView: UIView?) {
        self.multipleSelectionBackgroundView = multipleSelectionBackgroundView
    }
    
    func updateSelectionStyle(_ selectionStyle: UITableViewCell.SelectionStyle?) {
        self.selectionStyle = selectionStyle ?? self.selectionStyle
    }
    
    func updateIsSelected(_ isSelected: Bool?) {
        self.isSelected = isSelected ?? self.isSelected
    }
    
    func updateIsHighlighted(_ isHighlighted: Bool?) {
        self.isHighlighted = isHighlighted ?? self.isHighlighted
    }
    
    func updateShowsReorderControl(_ showsReorderControl: Bool?) {
        self.showsReorderControl = showsReorderControl ?? self.showsReorderControl
    }
    
    func updateShouldIndentWhileEditing(_ shouldIndentWhileEditing: Bool?) {
        self.shouldIndentWhileEditing = shouldIndentWhileEditing ?? self.shouldIndentWhileEditing
    }
    
    func updateAccessoryType(_ accessoryType: UITableViewCell.AccessoryType?) {
        self.accessoryType = accessoryType ?? self.accessoryType
    }
    
    func updateAccessoryView(_ accessoryView: UIView?) {
        self.accessoryView = accessoryView
    }
    
    func updateEditingAccessoryType(_ editingAccessoryType: UITableViewCell.AccessoryType?) {
        self.editingAccessoryType = editingAccessoryType ?? self.editingAccessoryType
    }
    
    func updateEditingAccessoryView(_ editingAccessoryView: UIView?) {
        self.editingAccessoryView = editingAccessoryView
    }

    func updateIndentationLevel(_ indentationLevel: Int?) {
        self.indentationLevel = indentationLevel ?? self.indentationLevel
    }

    func updateIndentationWidth(_ indentationWidth: CGFloat?) {
        self.indentationWidth = indentationWidth ?? self.indentationWidth
    }
    
    func updateSeparatorInset(_ separatorInset: UIEdgeInsets?) {
        self.separatorInset = separatorInset ?? self.separatorInset
    }
    
    func updateIsEditing(_ isEditing: Bool?) {
        self.isEditing = isEditing ?? self.isEditing
    }
    
    @available(iOS 9.0, *)
    func updateFocusStyle(_ focusStyle: UITableViewCell.FocusStyle?) {
        self.focusStyle = focusStyle ?? self.focusStyle
    }
    
    @available(iOS 11.0, *)
    func updateUserInteractionEnabledWhileDragging(_ userInteractionEnabledWhileDragging: Bool?) {
        self.userInteractionEnabledWhileDragging = userInteractionEnabledWhileDragging ?? self.userInteractionEnabledWhileDragging
    }

}

extension CMTTableViewCell {
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


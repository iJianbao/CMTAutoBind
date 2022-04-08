//
//  CMTBindTableView.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/18.
//

import UIKit

protocol CMTBindTableViewBindUpdateProtocol: CMTBindScrollViewBindUpdateProtocol {
    func updateDataSource(_ dataSource: UITableViewDataSource?)
    func updateDelegateTable(_ delegateTable: UITableViewDelegate?)
    
    @available(iOS 10.0, *)
    func updatePprefetchDataSource(_ prefetchDataSource: UITableViewDataSourcePrefetching?)
    @available(iOS 15.0, *)
    func updateIsPrefetchingEnabled(_ isPrefetchingEnabled: Bool?)
    @available(iOS 11.0, *)
    func updateDragDelegate(_ dragDelegate: UITableViewDragDelegate?)
    @available(iOS 11.0, *)
    func updateDropDelegate(_ dropDelegate: UITableViewDropDelegate?)
    
    func updateRowHeight(_ rowHeight: CGFloat?)
    func updateSectionHeaderHeight(_ sectionHeaderHeight: CGFloat?)
    func updateSectionFooterHeight(_ sectionFooterHeight: CGFloat?)
    func updateEstimatedRowHeight(_ estimatedRowHeight: CGFloat?)
    func updateEstimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat?)
    func updateEstimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat?)
    
    @available(iOS 15.0, *)
    func updateFillerRowHeight(_ fillerRowHeight: CGFloat?)
    @available(iOS 15.0, *)
    func updateSectionHeaderTopPadding(_ sectionHeaderTopPadding: CGFloat?)
//    func updateSeparatorInset(_ separatorInset: UIEdgeInsets?)
    @available(iOS 11.0, *)
    func updateSeparatorInsetReference(_ separatorInsetReference: UITableView.SeparatorInsetReference?)
    
    func updateBackgroundView(_ backgroundView: UIView?)
    func updateIsEditing(_ isEditing: Bool?)
    func updateAllowsSelection(_ allowsSelection: Bool?)
    func updateAllowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool?)
    func updateAllowsMultipleSelection(_ allowsMultipleSelection: Bool?)
    func updateAllowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool?)
    func updateSectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount: Int?)
    func updateSectionIndexColor(_ sectionIndexColor: UIColor?)
    func updateSectionIndexBackgroundColor(_ sectionIndexBackgroundColor: UIColor?)
    func updateSectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor: UIColor?)
    func updateSeparatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle?)
    func updateSeparatorColor(_ separatorColor: UIColor?)
    func updateSeparatorEffect(_ separatorEffect: UIVisualEffect?)
    func updateCellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth: Bool?)
    
    @available(iOS 11.0, *)
    func updateInsetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea: Bool?)
    func updateTableHeaderView(_ tableHeaderView: UIView?)
    func updateTableFooterView(_ tableFooterView: UIView?)
    
    @available(iOS 9.0, *)
    func updateRemembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool?)
}

open class CMTBindTableView: CMTBindScrollView {

    init(_ over: CMTBindTableViewBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var dataSource: CMTObserver<UITableViewDataSource>? {
        didSet {
            bindMediator(oldValue, observer: dataSource) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateDataSource(t)
            }
        }
    }
    
    public weak var delegateTable: CMTObserver<UITableViewDelegate>? {
        didSet {
            bindMediator(oldValue, observer: delegateTable) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateDelegateTable(t)
            }
        }
    }
    private weak var _prefetchDataSource: CMTObserver<UITableViewDataSourcePrefetching>? {
        didSet {
            bindMediator(oldValue, observer: _prefetchDataSource) {[weak self] t in
                if #available(iOS 10.0, *) {
                    (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updatePprefetchDataSource(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    private weak var _isPrefetchingEnabled: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: _isPrefetchingEnabled) {[weak self] t in
                if #available(iOS 15.0, *) {
                    (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateIsPrefetchingEnabled(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }

    private weak var _dragDelegate: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _dragDelegate) {[weak self] t in
                if #available(iOS 11.0, *) {
                    (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateDragDelegate(t as? UITableViewDragDelegate)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }

    private weak var _dropDelegate: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _dropDelegate) {[weak self] t in
                if #available(iOS 11.0, *) {
                    (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateDropDelegate(t as? UITableViewDropDelegate)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    public weak var rowHeight: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: rowHeight) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateRowHeight(t)
            }
        }
    }
    
    public weak var sectionHeaderHeight: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: sectionHeaderHeight) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateSectionHeaderHeight(t)
            }
        }
    }
    
    public weak var sectionFooterHeight: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: sectionFooterHeight) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateSectionFooterHeight(t)
            }
        }
    }
    
    public weak var estimatedRowHeight: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: estimatedRowHeight) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateEstimatedRowHeight(t)
            }
        }
    }
    
    public weak var estimatedSectionHeaderHeight: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: estimatedSectionHeaderHeight) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateEstimatedSectionHeaderHeight(t)
            }
        }
    }
    
    public weak var estimatedSectionFooterHeight: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: estimatedSectionFooterHeight) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateEstimatedSectionFooterHeight(t)
            }
        }
    }

    private weak var _fillerRowHeight: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: _fillerRowHeight) {[weak self] t in
                if #available(iOS 15.0, *) {
                    (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateFillerRowHeight(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }

    private weak var _sectionHeaderTopPadding: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: _sectionHeaderTopPadding) {[weak self] t in
                if #available(iOS 15.0, *) {
                    (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateSectionHeaderTopPadding(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    private weak var _separatorInsetReference: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _separatorInsetReference) {[weak self] t in
                if #available(iOS 11.0, *) {
                    (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateSeparatorInsetReference(t as? UITableView.SeparatorInsetReference)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    public weak var backgroundView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: backgroundView) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateBackgroundView(t)
            }
        }
    }
    
    public weak var isEditing: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isEditing) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateIsEditing(t)
            }
        }
    }
    
    public weak var allowsSelection: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: allowsSelection) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateAllowsSelection(t)
            }
        }
    }
    
    public weak var allowsSelectionDuringEditing: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: allowsSelectionDuringEditing) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateAllowsSelectionDuringEditing(t)
            }
        }
    }
    
    public weak var allowsMultipleSelection: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: allowsMultipleSelection) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateAllowsMultipleSelection(t)
            }
        }
    }
    
    public weak var allowsMultipleSelectionDuringEditing: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: allowsMultipleSelectionDuringEditing) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateAllowsMultipleSelectionDuringEditing(t)
            }
        }
    }
    
    public weak var sectionIndexMinimumDisplayRowCount: CMTObserver<Int>? {
        didSet {
            bindMediator(oldValue, observer: sectionIndexMinimumDisplayRowCount) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateSectionIndexMinimumDisplayRowCount(t)
            }
        }
    }
    
    public weak var sectionIndexColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: sectionIndexColor) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateSectionIndexColor(t)
            }
        }
    }
    
    public weak var sectionIndexBackgroundColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: sectionIndexBackgroundColor) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateSectionIndexBackgroundColor(t)
            }
        }
    }
    
    public weak var sectionIndexTrackingBackgroundColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: sectionIndexTrackingBackgroundColor) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateSectionIndexTrackingBackgroundColor(t)
            }
        }
    }
    
    public weak var separatorStyle: CMTObserver<UITableViewCell.SeparatorStyle>? {
        didSet {
            bindMediator(oldValue, observer: separatorStyle) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateSeparatorStyle(t)
            }
        }
    }
    
    public weak var separatorColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: separatorColor) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateSeparatorColor(t)
            }
        }
    }
    
    public weak var separatorEffect: CMTObserver<UIVisualEffect>? {
        didSet {
            bindMediator(oldValue, observer: separatorEffect) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateSeparatorEffect(t)
            }
        }
    }
    
    public weak var cellLayoutMarginsFollowReadableWidth: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: cellLayoutMarginsFollowReadableWidth) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateCellLayoutMarginsFollowReadableWidth(t)
            }
        }
    }

    private weak var _insetsContentViewsToSafeArea: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: _insetsContentViewsToSafeArea) {[weak self] t in
                if #available(iOS 11.0, *) {
                    (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateInsetsContentViewsToSafeArea(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    public weak var tableHeaderView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: tableHeaderView) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateTableHeaderView(t)
            }
        }
    }
    
    public weak var tableFooterView: CMTObserver<UIView>? {
        didSet {
            bindMediator(oldValue, observer: tableFooterView) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateTableFooterView(t)
            }
        }
    }
    
    public weak var remembersLastFocusedIndexPath: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: remembersLastFocusedIndexPath) {[weak self] t in
                (self?.bindOver as? CMTBindTableViewBindUpdateProtocol)?.updateRemembersLastFocusedIndexPath(t)
            }
        }
    }
}

extension CMTBindTableView {
    @available(iOS 10.0, *)
    public var prefetchDataSource: CMTObserver<UITableViewDataSourcePrefetching>? {
        get {
            return _prefetchDataSource
        }
        set {
            _prefetchDataSource = newValue
        }
    }
    
    @available(iOS 15.0, *)
    public var isPrefetchingEnabled: CMTObserver<Bool>? {
        get {
            return _isPrefetchingEnabled
        }
        set {
            _isPrefetchingEnabled = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var dragDelegate: CMTObserver<Any>? {
        get {
            return _dragDelegate
        }
        set {
            if newValue?.value is UITableViewDragDelegate {
                _dragDelegate = newValue
            }else {
                assert(false, "value 类型必须为 UITableViewDragDelegate")
            }
        }
    }
    @available(iOS 11.0, *)
    public var dropDelegate: CMTObserver<Any>? {
        get {
            return _dropDelegate
        }
        set {
            if newValue?.value is UITableViewDropDelegate {
                _dropDelegate = newValue
            }else {
                assert(false, "value 类型必须为 UITableViewDropDelegate")
            }
        }
    }
    
    @available(iOS 15.0, *)
    public var fillerRowHeight: CMTObserver<CGFloat>? {
        get {
            return _fillerRowHeight
        }
        set {
            _fillerRowHeight = newValue
        }
    }
    
    @available(iOS 15.0, *)
    public var sectionHeaderTopPadding: CMTObserver<CGFloat>? {
        get {
            return _sectionHeaderTopPadding
        }
        set {
            _sectionHeaderTopPadding = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var separatorInsetReference: CMTObserver<Any>? {
        get {
            return _separatorInsetReference
        }
        set {
            if newValue?.value is UITableView.SeparatorInsetReference {
                _separatorInsetReference = newValue
            }else {
                assert(false, "value 类型必须为 UITableView.SeparatorInsetReference")
            }
        }
    }
    
    @available(iOS 11.0, *)
    public var insetsContentViewsToSafeArea: CMTObserver<Bool>? {
        get {
            return _insetsContentViewsToSafeArea
        }
        set {
            _insetsContentViewsToSafeArea = newValue
        }
    }
}

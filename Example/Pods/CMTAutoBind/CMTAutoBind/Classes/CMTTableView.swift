//
//  CMTTableView.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/17.
//

import UIKit

open class CMTTableView: UITableView, CMTBindTableViewBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindTableView(self)
    }()

    func updateDataSource(_ dataSource: UITableViewDataSource?) {
        self.dataSource = dataSource
    }
    
    func updateDelegateTable(_ delegate: UITableViewDelegate?) {
        updateDelegate(delegate)
    }
    
    @available(iOS 10.0, *)
    func updatePprefetchDataSource(_ prefetchDataSource: UITableViewDataSourcePrefetching?) {
        self.prefetchDataSource = prefetchDataSource
    }
    
    @available(iOS 15.0, *)
    func updateIsPrefetchingEnabled(_ isPrefetchingEnabled: Bool?) {
        self.isPrefetchingEnabled = isPrefetchingEnabled ?? true
    }
    
    @available(iOS 11.0, *)
    func updateDragDelegate(_ dragDelegate: UITableViewDragDelegate?) {
        self.dragDelegate = dragDelegate
    }
    
    @available(iOS 11.0, *)
    func updateDropDelegate(_ dropDelegate: UITableViewDropDelegate?) {
        self.dropDelegate = dropDelegate
    }
    
    func updateRowHeight(_ rowHeight: CGFloat?) {
        self.rowHeight = rowHeight ?? self.rowHeight
    }
    
    func updateSectionHeaderHeight(_ sectionHeaderHeight: CGFloat?) {
        self.sectionHeaderHeight = sectionHeaderHeight ?? self.sectionHeaderHeight
    }
    
    func updateSectionFooterHeight(_ sectionFooterHeight: CGFloat?) {
        self.sectionFooterHeight = sectionFooterHeight ?? self.sectionFooterHeight
    }
    
    func updateEstimatedRowHeight(_ estimatedRowHeight: CGFloat?) {
        self.estimatedRowHeight = estimatedRowHeight ?? self.estimatedRowHeight
    }
    
    func updateEstimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat?) {
        self.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight ??  self.estimatedSectionHeaderHeight
    }
    
    func updateEstimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat?) {
        self.estimatedSectionFooterHeight = estimatedSectionFooterHeight ?? self.estimatedSectionFooterHeight
    }
    
    @available(iOS 15.0, *)
    func updateFillerRowHeight(_ fillerRowHeight: CGFloat?) {
        self.fillerRowHeight = fillerRowHeight ?? self.fillerRowHeight
    }

    @available(iOS 15.0, *)
    func updateSectionHeaderTopPadding(_ sectionHeaderTopPadding: CGFloat?) {
        self.sectionHeaderTopPadding = sectionHeaderTopPadding ?? self.sectionHeaderTopPadding
    }

//    func updateSeparatorInset(_ separatorInset: UIEdgeInsets?) {
//        self.separatorInset = separatorInset
//    }
    
    
    @available(iOS 11.0, *)
    func updateSeparatorInsetReference(_ separatorInsetReference: UITableView.SeparatorInsetReference?) {
        self.separatorInsetReference = separatorInsetReference ?? .fromCellEdges
    }
    
    func updateBackgroundView(_ backgroundView: UIView?) {
        self.backgroundView = backgroundView
    }
    
    func updateIsEditing(_ isEditing: Bool?) {
        self.isEditing = isEditing ?? false
    }
    
    func updateAllowsSelection(_ allowsSelection: Bool?) {
        self.allowsSelection = allowsSelection ?? true
    }
    
    func updateAllowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool?) {
        self.allowsSelectionDuringEditing = allowsSelectionDuringEditing ?? false
    }

    func updateAllowsMultipleSelection(_ allowsMultipleSelection: Bool?) {
        self.allowsMultipleSelection = allowsMultipleSelection ?? false
    }
    
    func updateAllowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool?) {
        self.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing ?? false
    }
    
    func updateSectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount: Int?) {
        self.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount ?? 0
    }
    
    func updateSectionIndexColor(_ sectionIndexColor: UIColor?) {
        self.sectionIndexColor = sectionIndexColor
    }
    
    func updateSectionIndexBackgroundColor(_ sectionIndexBackgroundColor: UIColor?) {
        self.sectionIndexBackgroundColor = sectionIndexBackgroundColor
    }
    
    func updateSectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor: UIColor?) {
        self.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor
    }
    
    func updateSeparatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle?) {
        self.separatorStyle = separatorStyle ?? .singleLine
    }
    
    func updateSeparatorColor(_ separatorColor: UIColor?) {
        self.separatorColor = separatorColor
    }
    
    func updateSeparatorEffect(_ separatorEffect: UIVisualEffect?) {
        self.separatorEffect = separatorEffect
    }

    func updateCellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth: Bool?) {
        self.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth ?? false
    }
    
    @available(iOS 11.0, *)
    func updateInsetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea: Bool?) {
        self.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea ?? true
    }
    
    func updateTableHeaderView(_ tableHeaderView: UIView?) {
        self.tableHeaderView = tableHeaderView
    }

    func updateTableFooterView(_ tableFooterView: UIView?) {
        self.tableFooterView = tableFooterView
    }
    
    @available(iOS 9.0, *)
    func updateRemembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool?) {
        self.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath ?? false
    }
    
//    @available(iOS 14.0, *)
//    func updateSelectionFollowsFocus(_ selectionFollowsFocus: Bool?) {
//        self.selectionFollowsFocus = selectionFollowsFocus
//    }

//    @available(iOS 15.0, *)
//    func updateAllowsFocus(_ allowsFocus: Bool?) {
//        self.allowsFocus = allowsFocus
//    }

//    @available(iOS 15.0, *)
//    func updateAllowsFocusDuringEditing(_ allowsFocusDuringEditing: Bool?) {
//        self.allowsFocusDuringEditing = allowsFocusDuringEditing
//    }
    
//    @available(iOS 11.0, *)
//    func updateDragInteractionEnabled(_ dragInteractionEnabled: UIView?) {
//        self.dragInteractionEnabled = dragInteractionEnabled
//    }
}

extension CMTTableView {
    func updateContentOffset(_ contentOffset: CGPoint?) {
        self.contentOffset = contentOffset ?? .zero
    }
    
    func updateContentSize(_ contentSize: CGSize?) {
        self.contentSize = contentSize ?? .zero
    }
    
    func updateContentInset(_ contentInset: UIEdgeInsets?) {
        self.contentInset = contentInset ?? .zero
    }
    
    @available(iOS 11.0, *)
    func updateContentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior?) {
        self.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior ?? .automatic
    }

    @available(iOS 13.0, *)
    func updateAutomaticallyAdjustsScrollIndicatorInsets(_ automaticallyAdjustsScrollIndicatorInsets: Bool?) {
        self.automaticallyAdjustsScrollIndicatorInsets = automaticallyAdjustsScrollIndicatorInsets ?? true
    }
    
    func updateDelegate(_ delegate: UIScrollViewDelegate?) {
        self.delegate = delegate as? UITableViewDelegate
    }
    
    func updateIsDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool?) {
        self.isDirectionalLockEnabled = isDirectionalLockEnabled ?? false
    }
    
    func updateBounces(_ bounces: Bool?) {
        self.bounces = bounces ?? true
    }
    
    func updateAlwaysBounceVertical(_ alwaysBounceVertical: Bool?) {
        self.alwaysBounceVertical = alwaysBounceVertical ?? false
    }

    func updateAlwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool?) {
        self.alwaysBounceHorizontal = alwaysBounceHorizontal ?? false
    }
    
    func updateIsPagingEnabled(_ isPagingEnabled: Bool?) {
        self.isPagingEnabled = isPagingEnabled ?? false
    }
    
    func updateIsScrollEnabled(_ isScrollEnabled: Bool?) {
        self.isScrollEnabled = isScrollEnabled ?? false
    }
    
    func updateShowsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool?) {
        self.showsVerticalScrollIndicator = showsVerticalScrollIndicator ?? true
    }
    
    func updateShowsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool?) {
        self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator ?? true
    }
    
    func updateIndicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle?) {
        self.indicatorStyle = indicatorStyle ?? .default
    }

    @available(iOS 11.1, *)
    func updateVerticalScrollIndicatorInsets(_ verticalScrollIndicatorInsets: UIEdgeInsets?) {
        self.verticalScrollIndicatorInsets = verticalScrollIndicatorInsets ?? .zero
    }
    
    @available(iOS 11.1, *)
    func updateHorizontalScrollIndicatorInsets(_ horizontalScrollIndicatorInsets: UIEdgeInsets?) {
        self.horizontalScrollIndicatorInsets = horizontalScrollIndicatorInsets ?? .zero
    }
    
    func updateScrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets?) {
        self.scrollIndicatorInsets = scrollIndicatorInsets ?? .zero
    }

    func updateDecelerationRate(_ decelerationRate: UIScrollView.DecelerationRate?) {
        self.decelerationRate = decelerationRate ?? self.decelerationRate
    }
    
    func updateIndexDisplayMode(_ indexDisplayMode: UIScrollView.IndexDisplayMode?) {
        self.indexDisplayMode = indexDisplayMode ?? .automatic
    }
        
    func updateDelaysContentTouches(_ delaysContentTouches: Bool?) {
        self.delaysContentTouches = delaysContentTouches ?? true
    }
    
    func updateCanCancelContentTouches(_ canCancelContentTouches: Bool?) {
        self.canCancelContentTouches = canCancelContentTouches ?? true
    }
    
    func updateMinimumZoomScale(_ minimumZoomScale: CGFloat?) {
        self.minimumZoomScale = minimumZoomScale ?? 1.0
    }
    
    func updateMaximumZoomScale(_ maximumZoomScale: CGFloat?) {
        self.maximumZoomScale = maximumZoomScale ?? 1.0
    }
    
    func updateZoomScale(_ zoomScale: CGFloat?) {
        self.zoomScale = zoomScale ?? 1.0
    }
    
    func updateBouncesZoom(_ bouncesZoom: Bool?) {
        self.bouncesZoom = bouncesZoom ?? true
    }
    
    func updateScrollsToTop(_ scrollsToTop: Bool?) {
        self.scrollsToTop = scrollsToTop ?? true
    }

    func updateKeyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode?) {
        self.keyboardDismissMode = keyboardDismissMode ?? .none
    }
    
    @available(iOS 10.0, *)
    func updateRefreshControl(_ refreshControl: UIRefreshControl?) {
        self.refreshControl = refreshControl
    }
}

extension CMTTableView {
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

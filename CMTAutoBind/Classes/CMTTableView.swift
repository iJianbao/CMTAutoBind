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
        self.isPrefetchingEnabled = isPrefetchingEnabled ?? self.isPrefetchingEnabled
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
        self.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight ?? self.estimatedSectionHeaderHeight
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
        self.separatorInsetReference = separatorInsetReference ?? self.separatorInsetReference
    }
    
    func updateBackgroundView(_ backgroundView: UIView?) {
        self.backgroundView = backgroundView
    }
    
    func updateIsEditing(_ isEditing: Bool?) {
        self.isEditing = isEditing ?? self.isEditing
    }
    
    func updateAllowsSelection(_ allowsSelection: Bool?) {
        self.allowsSelection = allowsSelection ?? self.allowsSelection
    }
    
    func updateAllowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool?) {
        self.allowsSelectionDuringEditing = allowsSelectionDuringEditing ?? self.allowsSelectionDuringEditing
    }

    func updateAllowsMultipleSelection(_ allowsMultipleSelection: Bool?) {
        self.allowsMultipleSelection = allowsMultipleSelection ?? self.allowsMultipleSelection
    }
    
    func updateAllowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool?) {
        self.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing ?? self.allowsMultipleSelectionDuringEditing
    }
    
    func updateSectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount: Int?) {
        self.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount ?? self.sectionIndexMinimumDisplayRowCount
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
        self.separatorStyle = separatorStyle ?? self.separatorStyle
    }
    
    func updateSeparatorColor(_ separatorColor: UIColor?) {
        self.separatorColor = separatorColor
    }
    
    func updateSeparatorEffect(_ separatorEffect: UIVisualEffect?) {
        self.separatorEffect = separatorEffect
    }

    func updateCellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth: Bool?) {
        self.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth ?? self.cellLayoutMarginsFollowReadableWidth
    }
    
    @available(iOS 11.0, *)
    func updateInsetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea: Bool?) {
        self.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea ?? self.insetsContentViewsToSafeArea
    }
    
    func updateTableHeaderView(_ tableHeaderView: UIView?) {
        self.tableHeaderView = tableHeaderView
    }

    func updateTableFooterView(_ tableFooterView: UIView?) {
        self.tableFooterView = tableFooterView
    }
    
    @available(iOS 9.0, *)
    func updateRemembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool?) {
        self.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath ?? self.remembersLastFocusedIndexPath
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
        self.contentOffset = contentOffset ?? self.contentOffset
    }
    
    func updateContentSize(_ contentSize: CGSize?) {
        self.contentSize = contentSize ?? self.contentSize
    }
    
    func updateContentInset(_ contentInset: UIEdgeInsets?) {
        self.contentInset = contentInset ?? self.contentInset
    }
    
    @available(iOS 11.0, *)
    func updateContentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior?) {
        self.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior ?? self.contentInsetAdjustmentBehavior
    }

    @available(iOS 13.0, *)
    func updateAutomaticallyAdjustsScrollIndicatorInsets(_ automaticallyAdjustsScrollIndicatorInsets: Bool?) {
        self.automaticallyAdjustsScrollIndicatorInsets = automaticallyAdjustsScrollIndicatorInsets ?? self.automaticallyAdjustsScrollIndicatorInsets
    }
    
    func updateDelegate(_ delegate: UIScrollViewDelegate?) {
        self.delegate = delegate as? UITableViewDelegate
    }
    
    func updateIsDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool?) {
        self.isDirectionalLockEnabled = isDirectionalLockEnabled ?? self.isDirectionalLockEnabled
    }
    
    func updateBounces(_ bounces: Bool?) {
        self.bounces = bounces ?? self.bounces
    }
    
    func updateAlwaysBounceVertical(_ alwaysBounceVertical: Bool?) {
        self.alwaysBounceVertical = alwaysBounceVertical ?? self.alwaysBounceVertical
    }

    func updateAlwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool?) {
        self.alwaysBounceHorizontal = alwaysBounceHorizontal ?? self.alwaysBounceHorizontal
    }
    
    func updateIsPagingEnabled(_ isPagingEnabled: Bool?) {
        self.isPagingEnabled = isPagingEnabled ?? self.isPagingEnabled
    }
    
    func updateIsScrollEnabled(_ isScrollEnabled: Bool?) {
        self.isScrollEnabled = isScrollEnabled ?? self.isScrollEnabled
    }
    
    func updateShowsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool?) {
        self.showsVerticalScrollIndicator = showsVerticalScrollIndicator ?? self.showsVerticalScrollIndicator
    }
    
    func updateShowsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool?) {
        self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator ?? self.showsHorizontalScrollIndicator
    }
    
    func updateIndicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle?) {
        self.indicatorStyle = indicatorStyle ?? self.indicatorStyle
    }

    @available(iOS 11.1, *)
    func updateVerticalScrollIndicatorInsets(_ verticalScrollIndicatorInsets: UIEdgeInsets?) {
        self.verticalScrollIndicatorInsets = verticalScrollIndicatorInsets ?? self.verticalScrollIndicatorInsets
    }
    
    @available(iOS 11.1, *)
    func updateHorizontalScrollIndicatorInsets(_ horizontalScrollIndicatorInsets: UIEdgeInsets?) {
        self.horizontalScrollIndicatorInsets = horizontalScrollIndicatorInsets ?? self.horizontalScrollIndicatorInsets
    }
    
    func updateScrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets?) {
        self.scrollIndicatorInsets = scrollIndicatorInsets ?? self.scrollIndicatorInsets
    }

    func updateDecelerationRate(_ decelerationRate: UIScrollView.DecelerationRate?) {
        self.decelerationRate = decelerationRate ?? self.decelerationRate
    }
    
    func updateIndexDisplayMode(_ indexDisplayMode: UIScrollView.IndexDisplayMode?) {
        self.indexDisplayMode = indexDisplayMode ?? self.indexDisplayMode
    }
        
    func updateDelaysContentTouches(_ delaysContentTouches: Bool?) {
        self.delaysContentTouches = delaysContentTouches ?? self.delaysContentTouches
    }
    
    func updateCanCancelContentTouches(_ canCancelContentTouches: Bool?) {
        self.canCancelContentTouches = canCancelContentTouches ?? self.canCancelContentTouches
    }
    
    func updateMinimumZoomScale(_ minimumZoomScale: CGFloat?) {
        self.minimumZoomScale = minimumZoomScale ?? self.minimumZoomScale
    }
    
    func updateMaximumZoomScale(_ maximumZoomScale: CGFloat?) {
        self.maximumZoomScale = maximumZoomScale ?? self.maximumZoomScale
    }
    
    func updateZoomScale(_ zoomScale: CGFloat?) {
        self.zoomScale = zoomScale ?? self.zoomScale
    }
    
    func updateBouncesZoom(_ bouncesZoom: Bool?) {
        self.bouncesZoom = bouncesZoom ?? self.bouncesZoom
    }
    
    func updateScrollsToTop(_ scrollsToTop: Bool?) {
        self.scrollsToTop = scrollsToTop ?? self.scrollsToTop
    }

    func updateKeyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode?) {
        self.keyboardDismissMode = keyboardDismissMode ?? self.keyboardDismissMode
    }
    
    @available(iOS 10.0, *)
    func updateRefreshControl(_ refreshControl: UIRefreshControl?) {
        self.refreshControl = refreshControl
    }
}

extension CMTTableView {
    func updateFrame(_ frame: CGRect?) {
        self.frame = frame ?? self.frame
    }
    
    func updateBounds(_ bounds: CGRect?) {
        self.bounds = bounds ?? self.bounds
    }
    
    func updateCenter(_ center: CGPoint?) {
        self.center = center ?? self.center
    }
    
    func updateTransform(_ transform: CGAffineTransform?) {
        self.transform = transform ?? self.transform
    }
    
    func updateBackgroundColor(_ color: UIColor?) {
        self.backgroundColor = color
    }
    
    func updateClipsToBounds(_ clipsToBounds: Bool?) {
        self.clipsToBounds = clipsToBounds ?? self.clipsToBounds
    }
    
    func updateAlpha(_ alpha: Float?) {
        if let a = alpha {
            self.alpha = CGFloat(a)
        }
    }
    
    func updateIsOpaque(_ isOpaque: Bool?) {
        self.isOpaque = isOpaque ?? self.isOpaque
    }
    
    func updateClearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool?) {
        self.clearsContextBeforeDrawing = clearsContextBeforeDrawing ?? self.clearsContextBeforeDrawing
    }
    
    func updateIsHidden(_ isHidden: Bool?) {
        self.isHidden = isHidden ?? self.isHidden
    }
    
    func updateContentMode(_ contentMode: UIView.ContentMode?) {
        self.contentMode = contentMode ?? self.contentMode
    }
    
    func updateTintColor(_ tintColor: UIColor?) {
        self.tintColor = tintColor
    }
    
    func bindGestureRecognizer(_ tap: UIGestureRecognizer) {
        self.addGestureRecognizer(tap)
    }
}

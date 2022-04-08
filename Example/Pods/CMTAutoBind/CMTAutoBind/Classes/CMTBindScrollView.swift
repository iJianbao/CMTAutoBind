//
//  CMTBindScrollView.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/17.
//

import UIKit

protocol CMTBindScrollViewBindUpdateProtocol: CMTViewBindUpdateProtocol {
    func updateContentOffset(_ contentOffset: CGPoint?)
    func updateContentSize(_ contentSize: CGSize?)
    func updateContentInset(_ contentInset: UIEdgeInsets?)
    
    @available(iOS 11.0, *)
    func updateContentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior?)
    @available(iOS 13.0, *)
    func updateAutomaticallyAdjustsScrollIndicatorInsets(_ automaticallyAdjustsScrollIndicatorInsets: Bool?)
    
    func updateDelegate(_ delegate: UIScrollViewDelegate?)
    func updateIsDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool?)
    func updateBounces(_ bounces: Bool?)
    func updateAlwaysBounceVertical(_ alwaysBounceVertical: Bool?)
    func updateAlwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool?)
    func updateIsPagingEnabled(_ isPagingEnabled: Bool?)
    
    func updateIsScrollEnabled(_ isScrollEnabled: Bool?)
    func updateShowsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool?)
    func updateShowsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool?)
    func updateIndicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle?)
    
    @available(iOS 11.1, *)
    func updateVerticalScrollIndicatorInsets(_ verticalScrollIndicatorInsets: UIEdgeInsets?)
    @available(iOS 11.1, *)
    func updateHorizontalScrollIndicatorInsets(_ horizontalScrollIndicatorInsets: UIEdgeInsets?)
    
    func updateScrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets?)
    func updateDecelerationRate(_ decelerationRate: UIScrollView.DecelerationRate?)
    func updateIndexDisplayMode(_ indexDisplayMode: UIScrollView.IndexDisplayMode?)
    func updateDelaysContentTouches(_ delaysContentTouches: Bool?)
    func updateCanCancelContentTouches(_ canCancelContentTouches: Bool?)
    func updateMinimumZoomScale(_ minimumZoomScale: CGFloat?)
    func updateMaximumZoomScale(_ maximumZoomScale: CGFloat?)
    
    func updateZoomScale(_ zoomScale: CGFloat?)
    func updateBouncesZoom(_ bouncesZoom: Bool?)
    func updateScrollsToTop(_ scrollsToTop: Bool?)
    func updateKeyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode?)
    
    @available(iOS 10.0, *)
    func updateRefreshControl(_ refreshControl: UIRefreshControl?)
}

open class CMTBindScrollView: CMTBindView {
    init(_ over: CMTBindScrollViewBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var contentOffset: CMTObserver<CGPoint>? {
        didSet {
            bindMediator(oldValue, observer: contentOffset) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateContentOffset(t)
            }
        }
    }
    
    public weak var contentSize: CMTObserver<CGSize>? {
        didSet {
            bindMediator(oldValue, observer: contentSize) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateContentSize(t)
            }
        }
    }
    
    public weak var contentInset: CMTObserver<UIEdgeInsets>? {
        didSet {
            bindMediator(oldValue, observer: contentInset) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateContentInset(t)
            }
        }
    }
    
    private weak var _contentInsetAdjustmentBehavior: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _contentInsetAdjustmentBehavior) {[weak self] t in
                if #available(iOS 11.0, *) {
                    (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateContentInsetAdjustmentBehavior(t as? UIScrollView.ContentInsetAdjustmentBehavior)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    private weak var _automaticallyAdjustsScrollIndicatorInsets: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: _automaticallyAdjustsScrollIndicatorInsets) {[weak self] t in
                if #available(iOS 13.0, *) {
                    (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateAutomaticallyAdjustsScrollIndicatorInsets(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    public weak var delegate: CMTObserver<UIScrollViewDelegate>? {
        didSet {
            bindMediator(oldValue, observer: delegate) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateDelegate(t)
            }
        }
    }
    
    public weak var isDirectionalLockEnabled: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isDirectionalLockEnabled) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateIsDirectionalLockEnabled(t)
            }
        }
    }
    
    public weak var bounces: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: bounces) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateBounces(t)
            }
        }
    }
    
    
    public weak var alwaysBounceVertical: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: alwaysBounceVertical) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateAlwaysBounceVertical(t)
            }
        }
    }
    
    public weak var alwaysBounceHorizontal: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: alwaysBounceHorizontal) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateAlwaysBounceHorizontal(t)
            }
        }
    }
    
    public weak var isPagingEnabled: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isPagingEnabled) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateIsPagingEnabled(t)
            }
        }
    }
    
    public weak var isScrollEnabled: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isScrollEnabled) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateIsScrollEnabled(t)
            }
        }
    }
    
    public weak var showsVerticalScrollIndicator: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: showsVerticalScrollIndicator) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateShowsVerticalScrollIndicator(t)
            }
        }
    }
    
    public weak var showsHorizontalScrollIndicator: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: showsHorizontalScrollIndicator) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateShowsHorizontalScrollIndicator(t)
            }
        }
    }
    
    public weak var indicatorStyle: CMTObserver<UIScrollView.IndicatorStyle>? {
        didSet {
            bindMediator(oldValue, observer: indicatorStyle) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateIndicatorStyle(t)
            }
        }
    }
    
    private weak var _verticalScrollIndicatorInsets: CMTObserver<UIEdgeInsets>? {
        didSet {
            bindMediator(oldValue, observer: _verticalScrollIndicatorInsets) {[weak self] t in
                if #available(iOS 11.1, *) {
                    (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateVerticalScrollIndicatorInsets(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    private weak var _horizontalScrollIndicatorInsets: CMTObserver<UIEdgeInsets>? {
        didSet {
            bindMediator(oldValue, observer: _horizontalScrollIndicatorInsets) {[weak self] t in
                if #available(iOS 11.1, *) {
                    (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateHorizontalScrollIndicatorInsets(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    public weak var scrollIndicatorInsets: CMTObserver<UIEdgeInsets>? {
        didSet {
            bindMediator(oldValue, observer: scrollIndicatorInsets) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateScrollIndicatorInsets(t)
            }
        }
    }
    
    public weak var decelerationRate: CMTObserver<UIScrollView.DecelerationRate>? {
        didSet {
            bindMediator(oldValue, observer: decelerationRate) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateDecelerationRate(t)
            }
        }
    }
    
    public weak var indexDisplayMode: CMTObserver<UIScrollView.IndexDisplayMode>? {
        didSet {
            bindMediator(oldValue, observer: indexDisplayMode) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateIndexDisplayMode(t)
            }
        }
    }
    
    public weak var delaysContentTouches: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: delaysContentTouches) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateDelaysContentTouches(t)
            }
        }
    }
    
    public weak var canCancelContentTouches: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: canCancelContentTouches) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateCanCancelContentTouches(t)
            }
        }
    }
    
    public weak var minimumZoomScale: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: minimumZoomScale) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateMinimumZoomScale(t)
            }
        }
    }
    
    public weak var maximumZoomScale: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: maximumZoomScale) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateMaximumZoomScale(t)
            }
        }
    }
    
    public weak var zoomScale: CMTObserver<CGFloat>? {
        didSet {
            bindMediator(oldValue, observer: zoomScale) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateZoomScale(t)
            }
        }
    }
    
    public weak var bouncesZoom: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: bouncesZoom) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateBouncesZoom(t)
            }
        }
    }
    
    public weak var scrollsToTop: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: scrollsToTop) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateScrollsToTop(t)
            }
        }
    }
    
    public weak var keyboardDismissMode: CMTObserver<UIScrollView.KeyboardDismissMode>? {
        didSet {
            bindMediator(oldValue, observer: keyboardDismissMode) {[weak self] t in
                (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateKeyboardDismissMode(t)
            }
        }
    }
    
    private weak var _refreshControl: CMTObserver<UIRefreshControl>? {
        didSet {
            bindMediator(oldValue, observer: _refreshControl) {[weak self] t in
                if #available(iOS 10.0, *) {
                    (self?.bindOver as? CMTBindScrollViewBindUpdateProtocol)?.updateRefreshControl(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
}

extension CMTBindScrollView {
    @available(iOS 11.0, *)
    public var contentInsetAdjustmentBehavior: CMTObserver<Any>? {
        get {
            return _contentInsetAdjustmentBehavior
        }
        set {
            if newValue?.value is UIScrollView.ContentInsetAdjustmentBehavior {
                _contentInsetAdjustmentBehavior = newValue
            }else {
                assert(false, "value 类型必须为 UIScrollView.ContentInsetAdjustmentBehavior")
            }
        }
    }
    
    @available(iOS 13.0, *)
    public var automaticallyAdjustsScrollIndicatorInsets: CMTObserver<Bool>? {
        get {
            return _automaticallyAdjustsScrollIndicatorInsets
        }
        set {
            _automaticallyAdjustsScrollIndicatorInsets = newValue
        }
    }
    
    @available(iOS 11.1, *)
    public var verticalScrollIndicatorInsets: CMTObserver<UIEdgeInsets>? {
        get {
            return _verticalScrollIndicatorInsets
        }
        set {
            _verticalScrollIndicatorInsets = newValue
        }
    }
    
    @available(iOS 11.1, *)
    public var horizontalScrollIndicatorInsets: CMTObserver<UIEdgeInsets>? {
        get {
            return _horizontalScrollIndicatorInsets
        }
        set {
            _horizontalScrollIndicatorInsets = newValue
        }
    }
    
    @available(iOS 10.0, *)
    public var refreshControl: CMTObserver<UIRefreshControl>? {
        get {
            return _refreshControl
        }
        set {
            _refreshControl = newValue
        }
    }
}

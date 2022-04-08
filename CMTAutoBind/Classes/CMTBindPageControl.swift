//
//  CMTBindPageControl.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/21.
//

import UIKit

protocol CMTBindPageControlBindUpdateProtocol: CMTControlBindUpdateProtocol {
    func updateNumberOfPages(_ numberOfPages: Int?)
    func updateCurrentPage(_ currentPage: Int?)
    func updateHidesForSinglePage(_ hidesForSinglePage: Bool?)
    func updatePageIndicatorTintColor(_ pageIndicatorTintColor: UIColor?)
    func updateCurrentPageIndicatorTintColor(_ currentPageIndicatorTintColor: UIColor?)
    @available(iOS 14.0, *)
    func updateBackgroundStyle(_ backgroundStyle: UIPageControl.BackgroundStyle?)
    @available(iOS 14.0, *)
    func updateAllowsContinuousInteraction(_ allowsContinuousInteraction: Bool?)
    @available(iOS 14.0, *)
    func updatePreferredIndicatorImage(_ preferredIndicatorImage: UIImage?)
}

open class CMTBindPageControl: CMTBindControl {
    init(_ over: CMTBindPageControlBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var numberOfPages: CMTObserver<Int>? {
        didSet {
            bindMediator(oldValue, observer: numberOfPages) {[weak self] t in
                (self?.bindOver as? CMTBindPageControlBindUpdateProtocol)?.updateNumberOfPages(t)
            }
        }
    }
    
    public weak var currentPage: CMTObserver<Int>? {
        didSet {
            bindMediator(oldValue, observer: currentPage) {[weak self] t in
                (self?.bindOver as? CMTBindPageControlBindUpdateProtocol)?.updateCurrentPage(t)
            }
        }
    }
    
    public weak var hidesForSinglePage: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: hidesForSinglePage) {[weak self] t in
                (self?.bindOver as? CMTBindPageControlBindUpdateProtocol)?.updateHidesForSinglePage(t)
            }
        }
    }
    
    public weak var pageIndicatorTintColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: pageIndicatorTintColor) {[weak self] t in
                (self?.bindOver as? CMTBindPageControlBindUpdateProtocol)?.updatePageIndicatorTintColor(t)
            }
        }
    }
    
    public weak var currentPageIndicatorTintColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: currentPageIndicatorTintColor) {[weak self] t in
                (self?.bindOver as? CMTBindPageControlBindUpdateProtocol)?.updateCurrentPageIndicatorTintColor(t)
            }
        }
    }
    
    
    private weak var _backgroundStyle: CMTObserver<Any>? {
        didSet {
            bindMediator(oldValue, observer: _backgroundStyle) {[weak self] t in
                if #available(iOS 14.0, *) {
                    (self?.bindOver as? CMTBindPageControlBindUpdateProtocol)?.updateBackgroundStyle(t as? UIPageControl.BackgroundStyle)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    private weak var _allowsContinuousInteraction: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: _allowsContinuousInteraction) {[weak self] t in
                if #available(iOS 14.0, *) {
                    (self?.bindOver as? CMTBindPageControlBindUpdateProtocol)?.updateAllowsContinuousInteraction(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
    
    private weak var _preferredIndicatorImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: _preferredIndicatorImage) {[weak self] t in
                if #available(iOS 14.0, *) {
                    (self?.bindOver as? CMTBindPageControlBindUpdateProtocol)?.updatePreferredIndicatorImage(t)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
}

extension CMTBindPageControl {
    
    @available(iOS 14.0, *)
    public var backgroundStyle: CMTObserver<Any>? {
        get {
            return _backgroundStyle
        }
        set {
            if newValue?.value is UIPageControl.BackgroundStyle {
                _backgroundStyle = newValue
            }else {
                assert(false, "value 类型必须为 UIPageControl.BackgroundStyle")
            }
        }
    }
    
    @available(iOS 14.0, *)
    public var allowsContinuousInteraction: CMTObserver<Bool>? {
        get {
            return _allowsContinuousInteraction
        }
        set {
            _allowsContinuousInteraction = newValue
        }
    }
    
    @available(iOS 14.0, *)
    public var preferredIndicatorImage: CMTObserver<UIImage>? {
        get {
            return _preferredIndicatorImage
        }
        set {
            _preferredIndicatorImage = newValue
        }
    }
}

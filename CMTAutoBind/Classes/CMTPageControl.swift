//
//  CMTPageControl.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/21.
//

import UIKit

open class CMTPageControl: UIPageControl, CMTBindPageControlBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindPageControl(self)
    }()
    
    func updateNumberOfPages(_ numberOfPages: Int?) {
        self.numberOfPages = numberOfPages ?? self.numberOfPages
    }
    
    func updateCurrentPage(_ currentPage: Int?) {
        self.currentPage = currentPage ?? self.currentPage
    }
    
    func updateHidesForSinglePage(_ hidesForSinglePage: Bool?) {
        self.hidesForSinglePage = hidesForSinglePage ?? self.hidesForSinglePage
    }
    
    func updatePageIndicatorTintColor(_ pageIndicatorTintColor: UIColor?) {
        self.pageIndicatorTintColor = pageIndicatorTintColor
    }
    
    func updateCurrentPageIndicatorTintColor(_ currentPageIndicatorTintColor: UIColor?) {
        self.currentPageIndicatorTintColor = currentPageIndicatorTintColor
    }
    
    @available(iOS 14.0, *)
    func updateBackgroundStyle(_ backgroundStyle: UIPageControl.BackgroundStyle?) {
        self.backgroundStyle = backgroundStyle ?? self.backgroundStyle
    }

    @available(iOS 14.0, *)
    func updateAllowsContinuousInteraction(_ allowsContinuousInteraction: Bool?) {
        self.allowsContinuousInteraction = allowsContinuousInteraction ?? self.allowsContinuousInteraction
    }

    @available(iOS 14.0, *)
    func updatePreferredIndicatorImage(_ preferredIndicatorImage: UIImage?) {
        self.preferredIndicatorImage = preferredIndicatorImage
    }
}

extension CMTPageControl {
    func updateIsEnabled(_ isEnabled: Bool?) {
        self.isEnabled = isEnabled ?? self.isEnabled
    }
    
    func updateIsSelected(_ isSelected: Bool?) {
        self.isSelected = isSelected ?? self.isSelected
    }
    
    func updateIsHighlighted(_ isHighlighted: Bool?) {
        self.isHighlighted = isHighlighted ?? self.isHighlighted
    }
    
    func updateContentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment?) {
        self.contentVerticalAlignment = contentVerticalAlignment ?? self.contentVerticalAlignment
    }
    
    func updateContentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment?) {
        self.contentHorizontalAlignment = contentHorizontalAlignment ?? self.contentHorizontalAlignment
    }
}

extension CMTPageControl {
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



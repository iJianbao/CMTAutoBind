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
        self.numberOfPages = numberOfPages ?? 0
    }
    
    func updateCurrentPage(_ currentPage: Int?) {
        self.currentPage = currentPage ?? 0
    }
    
    func updateHidesForSinglePage(_ hidesForSinglePage: Bool?) {
        self.hidesForSinglePage = hidesForSinglePage ?? false
    }
    
    func updatePageIndicatorTintColor(_ pageIndicatorTintColor: UIColor?) {
        self.pageIndicatorTintColor = pageIndicatorTintColor
    }
    
    func updateCurrentPageIndicatorTintColor(_ currentPageIndicatorTintColor: UIColor?) {
        self.currentPageIndicatorTintColor = currentPageIndicatorTintColor
    }
    
    @available(iOS 14.0, *)
    func updateBackgroundStyle(_ backgroundStyle: UIPageControl.BackgroundStyle?) {
        self.backgroundStyle = backgroundStyle ?? .automatic
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
        self.isEnabled = isEnabled ?? true
    }
    
    func updateIsSelected(_ isSelected: Bool?) {
        self.isSelected = isSelected ?? false
    }
    
    func updateIsHighlighted(_ isHighlighted: Bool?) {
        self.isHighlighted = isHighlighted ?? false
    }
    
    func updateContentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment?) {
        self.contentVerticalAlignment = contentVerticalAlignment ?? .center
    }
    
    func updateContentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment?) {
        self.contentHorizontalAlignment = contentHorizontalAlignment ?? .center
    }
}

extension CMTPageControl {
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
    
    func bindGestureRecognizer(_ tap: UIGestureRecognizer) {
        self.addGestureRecognizer(tap)
    }
}



//
//  CMTTextView.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/17.
//

import UIKit

open class CMTTextView: UITextView, CMTBindTextViewBindUpdateProtocol {
    
    public lazy var bind = {
        return CMTBindTextView(self)
    }()
    
    func updateText(_ text: String?) {
        self.text = text ?? self.text
    }
    
    func updateFont(_ font: UIFont?) {
        self.font = font
    }
    
    func updateTextColor(_ textColor: UIColor?) {
        self.textColor = textColor
    }
    
    func updateTextAlignment(_ textAlignment: NSTextAlignment?) {
        self.textAlignment = textAlignment ?? self.textAlignment
    }
    
    func updateSelectedRange(_ selectedRange: NSRange?) {
        guard let a = selectedRange else {
            return
        }
        self.selectedRange = a
    }
    
    func updateIsEditable(_ isEditable: Bool?) {
        self.isEditable = isEditable ?? self.isEditable
    }
    
    func updateIsSelectable(_ isSelectable: Bool?) {
        self.isSelectable = isSelectable ?? self.isSelectable
    }
    
    func updateDataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes?) {
        self.dataDetectorTypes = dataDetectorTypes ?? self.dataDetectorTypes
    }

    func updateAllowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool?) {
        self.allowsEditingTextAttributes = allowsEditingTextAttributes ?? self.allowsEditingTextAttributes
    }

    func updateAttributedText(_ attributedText: NSAttributedString?) {
        guard let a = attributedText else {
            return
        }
        self.attributedText = a
    }
    
    func updateTypingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]?) {
        // self.typingAttributes = typingAttributes ?? self.typingAttributes
        if let array = typingAttributes {
            var newArray: [String : Any] = [:]
            for d in array {
                newArray[d.key.rawValue] = d.value
            }
            self.typingAttributes = newArray
        }else {
            self.typingAttributes = self.typingAttributes
        }
    }
    
    func updateInputView(_ inputView: UIView?) {
        self.inputView = inputView
    }
    
    func updateInputAccessoryView(_ inputAccessoryView: UIView?) {
        self.inputAccessoryView = inputAccessoryView
    }
    
    func updateClearsOnInsertion(_ clearsOnInsertion: Bool?) {
        self.clearsOnInsertion = clearsOnInsertion ?? self.clearsOnInsertion
    }
    
    func updateTextContainerInset(_ textContainerInset: UIEdgeInsets?) {
        guard let a = textContainerInset else {
            return
        }
        self.textContainerInset = a
    }
    
    func updateLinkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]?) {
//        self.linkTextAttributes = linkTextAttributes ?? self.linkTextAttributes
        if let array = linkTextAttributes {
            var newArray: [String : Any] = [:]
            for d in array {
                newArray[d.key.rawValue] = d.value
            }
            self.linkTextAttributes = newArray
        }else {
            self.linkTextAttributes = self.linkTextAttributes
        }
    }

    @available(iOS 13.0, *)
    func updateUsesStandardTextScaling(_ usesStandardTextScaling: Bool?) {
        self.usesStandardTextScaling = usesStandardTextScaling ?? self.usesStandardTextScaling
    }
    
    @available(iOS 15.0, *)
    func updateInteractionState(_ interactionState: Any?) {
        guard let a = interactionState else {
            return
        }
        self.interactionState = a
    }
    
    func updateTextViewDelegate(_ delegate: UITextViewDelegate?) {
        updateDelegate(delegate)
    }
    
}

extension CMTTextView {
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
        self.delegate = delegate as? UITextViewDelegate
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

extension CMTTextView {
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

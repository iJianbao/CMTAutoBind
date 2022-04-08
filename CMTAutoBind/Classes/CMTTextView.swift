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
        self.text = text ?? ""
    }
    
    func updateFont(_ font: UIFont?) {
        self.font = font
    }
    
    func updateTextColor(_ textColor: UIColor?) {
        self.textColor = textColor
    }
    
    func updateTextAlignment(_ textAlignment: NSTextAlignment?) {
        self.textAlignment = textAlignment ?? .left
    }
    
    func updateSelectedRange(_ selectedRange: NSRange?) {
        guard let a = selectedRange else {
            return
        }
        self.selectedRange = a
    }
    
    func updateIsEditable(_ isEditable: Bool?) {
        self.isEditable = isEditable ?? true
    }
    
    func updateIsSelectable(_ isSelectable: Bool?) {
        self.isSelectable = isSelectable ?? false
    }
    
    func updateDataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes?) {
        self.dataDetectorTypes = dataDetectorTypes ?? .all
    }

    func updateAllowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool?) {
        self.allowsEditingTextAttributes = allowsEditingTextAttributes ?? false
    }

    func updateAttributedText(_ attributedText: NSAttributedString?) {
        guard let a = attributedText else {
            return
        }
        self.attributedText = a
    }
    
    func updateTypingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]?) {
        self.typingAttributes = typingAttributes ?? self.typingAttributes
    }
    
    func updateInputView(_ inputView: UIView?) {
        self.inputView = inputView
    }
    
    func updateInputAccessoryView(_ inputAccessoryView: UIView?) {
        self.inputAccessoryView = inputAccessoryView
    }
    
    func updateClearsOnInsertion(_ clearsOnInsertion: Bool?) {
        self.clearsOnInsertion = clearsOnInsertion ?? false
    }
    
    func updateTextContainerInset(_ textContainerInset: UIEdgeInsets?) {
        guard let a = textContainerInset else {
            return
        }
        self.textContainerInset = a
    }
    
    func updateLinkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]?) {
        self.linkTextAttributes = linkTextAttributes ?? self.linkTextAttributes
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
        self.delegate = delegate as? UITextViewDelegate
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
        self.verticalScrollIndicatorInsets = verticalScrollIndicatorInsets ?? self.verticalScrollIndicatorInsets
    }
    
    @available(iOS 11.1, *)
    func updateHorizontalScrollIndicatorInsets(_ horizontalScrollIndicatorInsets: UIEdgeInsets?) {
        self.horizontalScrollIndicatorInsets = horizontalScrollIndicatorInsets ?? self.horizontalScrollIndicatorInsets
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

extension CMTTextView {
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

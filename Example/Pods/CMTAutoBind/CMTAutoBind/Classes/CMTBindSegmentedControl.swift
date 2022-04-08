//
//  CMTBindSegmentedControl.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/21.
//

import UIKit

protocol CMTBindSegmentedControlBindUpdateProtocol: CMTControlBindUpdateProtocol {
    func updateIsMomentary(_ isMomentary: Bool?)
    func updateApportionsSegmentWidthsByContent(_ apportionsSegmentWidthsByContent: Bool?)
    func updateSelectedSegmentIndex(_ selectedSegmentIndex: Int?)
    @available(iOS 13.0, *)
    func updateSelectedSegmentTintColor(_ selectedSegmentTintColor: UIColor?)
}

open class CMTBindSegmentedControl: CMTBindControl {
    init(_ over: CMTBindSegmentedControlBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var isMomentary: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isMomentary) {[weak self] t in
                (self?.bindOver as? CMTBindSegmentedControlBindUpdateProtocol)?.updateIsMomentary(t)
            }
        }
    }
    
    public weak var apportionsSegmentWidthsByContent: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: apportionsSegmentWidthsByContent) {[weak self] t in
                (self?.bindOver as? CMTBindSegmentedControlBindUpdateProtocol)?.updateApportionsSegmentWidthsByContent(t)
            }
        }
    }
    
    public weak var selectedSegmentIndex: CMTObserver<Int>? {
        didSet {
            bindMediator(oldValue, observer: selectedSegmentIndex) {[weak self] t in
                (self?.bindOver as? CMTBindSegmentedControlBindUpdateProtocol)?.updateSelectedSegmentIndex(t)
            }
        }
    }
    
    private weak var _selectedSegmentTintColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: _selectedSegmentTintColor) {[weak self] t in
                if #available(iOS 13.0, *) {
                    (self?.bindOver as? CMTBindSegmentedControlBindUpdateProtocol)?.updateSelectedSegmentTintColor(t)
                } else {
                    // Fallback on earlier versions
                    assert(false, "selectedSegmentTintColor need iOS13.0+")
                }
            }
        }
    }
}

extension CMTBindSegmentedControl {
    @available(iOS 13.0, *)
    public var selectedSegmentTintColor: CMTObserver<UIColor>? {
        get {
            return _selectedSegmentTintColor
        }
        set {
            _selectedSegmentTintColor = newValue
        }
    }
}

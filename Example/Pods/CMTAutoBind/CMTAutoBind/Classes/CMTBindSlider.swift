//
//  CMTBindSlider.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/21.
//

import UIKit


protocol CMTBindSliderBindUpdateProtocol: CMTControlBindUpdateProtocol {
    func updateValue(_ value: Float?)
    func updateMinimumValue(_ minimumValue: Float?)
    func updateMaximumValue(_ maximumValue: Float?)
    func updateMinimumValueImage(_ minimumValueImage: UIImage?)
    func updateMaximumValueImage(_ maximumValueImage: UIImage?)
    func updateIsContinuous(_ isContinuous: Bool?)
    func updateMinimumTrackTintColor(_ minimumTrackTintColor: UIColor?)
    func updateMaximumTrackTintColor(_ maximumTrackTintColor: UIColor?)
    func updateThumbTintColor(_ thumbTintColor: UIColor?)
}

open class CMTBindSlider: CMTBindControl {
    init(_ over: CMTBindSliderBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var value: CMTObserver<Float>? {
        didSet {
            bindMediator(oldValue, observer: value) {[weak self] t in
                (self?.bindOver as? CMTBindSliderBindUpdateProtocol)?.updateValue(t)
            }
        }
    }
    
    public weak var minimumValue: CMTObserver<Float>? {
        didSet {
            bindMediator(oldValue, observer: minimumValue) {[weak self] t in
                (self?.bindOver as? CMTBindSliderBindUpdateProtocol)?.updateMinimumValue(t)
            }
        }
    }
    
    public weak var maximumValue: CMTObserver<Float>? {
        didSet {
            bindMediator(oldValue, observer: maximumValue) {[weak self] t in
                (self?.bindOver as? CMTBindSliderBindUpdateProtocol)?.updateMaximumValue(t)
            }
        }
    }
    
    public weak var minimumValueImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: minimumValueImage) {[weak self] t in
                (self?.bindOver as? CMTBindSliderBindUpdateProtocol)?.updateMinimumValueImage(t)
            }
        }
    }
    
    public weak var maximumValueImage: CMTObserver<UIImage>? {
        didSet {
            bindMediator(oldValue, observer: maximumValueImage) {[weak self] t in
                (self?.bindOver as? CMTBindSliderBindUpdateProtocol)?.updateMaximumValueImage(t)
            }
        }
    }
    
    public weak var isContinuous: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isContinuous) {[weak self] t in
                (self?.bindOver as? CMTBindSliderBindUpdateProtocol)?.updateIsContinuous(t)
            }
        }
    }
    
    public weak var minimumTrackTintColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: minimumTrackTintColor) {[weak self] t in
                (self?.bindOver as? CMTBindSliderBindUpdateProtocol)?.updateMinimumTrackTintColor(t)
            }
        }
    }
    
    public weak var maximumTrackTintColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: maximumTrackTintColor) {[weak self] t in
                (self?.bindOver as? CMTBindSliderBindUpdateProtocol)?.updateMaximumTrackTintColor(t)
            }
        }
    }
    
    public weak var thumbTintColor: CMTObserver<UIColor>? {
        didSet {
            bindMediator(oldValue, observer: thumbTintColor) {[weak self] t in
                (self?.bindOver as? CMTBindSliderBindUpdateProtocol)?.updateThumbTintColor(t)
            }
        }
    }
}

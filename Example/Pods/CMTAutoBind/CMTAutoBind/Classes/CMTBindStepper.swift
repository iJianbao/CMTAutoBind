//
//  CMTBindStepper.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/22.
//

import UIKit

protocol CMTBindStepperBindUpdateProtocol: CMTControlBindUpdateProtocol {
    func updateIsContinuous(_ isContinuous: Bool?)
    func updateAutorepeat(_ autorepeat: Bool?)
    func updateWraps(_ wraps: Bool?)
    func updateValue(_ value: Double?)
    func updateMinimumValue(_ minimumValue: Double?)
    func updateMaximumValue(_ maximumValue: Double?)
    func updateStepValue(_ stepValue: Double?)
}

open class CMTBindStepper: CMTBindControl {
    init(_ over: CMTBindStepperBindUpdateProtocol) {
        super.init(over)
    }
    
    public weak var isContinuous: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: isContinuous) {[weak self] t in
                (self?.bindOver as? CMTBindStepperBindUpdateProtocol)?.updateIsContinuous(t)
            }
        }
    }
    
    public weak var autorepeat: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: autorepeat) {[weak self] t in
                (self?.bindOver as? CMTBindStepperBindUpdateProtocol)?.updateAutorepeat(t)
            }
        }
    }
    
    public weak var wraps: CMTObserver<Bool>? {
        didSet {
            bindMediator(oldValue, observer: wraps) {[weak self] t in
                (self?.bindOver as? CMTBindStepperBindUpdateProtocol)?.updateWraps(t)
            }
        }
    }
    
    public weak var value: CMTObserver<Double>? {
        didSet {
            bindMediator(oldValue, observer: value) {[weak self] t in
                (self?.bindOver as? CMTBindStepperBindUpdateProtocol)?.updateValue(t)
            }
        }
    }
    
    public weak var minimumValue: CMTObserver<Double>? {
        didSet {
            bindMediator(oldValue, observer: minimumValue) {[weak self] t in
                (self?.bindOver as? CMTBindStepperBindUpdateProtocol)?.updateMinimumValue(t)
            }
        }
    }
    
    public weak var maximumValue: CMTObserver<Double>? {
        didSet {
            bindMediator(oldValue, observer: maximumValue) {[weak self] t in
                (self?.bindOver as? CMTBindStepperBindUpdateProtocol)?.updateMaximumValue(t)
            }
        }
    }
    
    public weak var stepValue: CMTObserver<Double>? {
        didSet {
            bindMediator(oldValue, observer: stepValue) {[weak self] t in
                (self?.bindOver as? CMTBindStepperBindUpdateProtocol)?.updateStepValue(t)
            }
        }
    }
}

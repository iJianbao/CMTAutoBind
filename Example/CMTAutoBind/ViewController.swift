//
//  ViewController.swift
//  CMTAutoBind
//
//  Created by 2yue8hao on 2022/3/14.
//

import UIKit
import CMTAutoBind

class ViewController: UIViewController {
    
    var observer: CMTObserver<String>? = CMTObserver<String>.init(nil)
    let observer2 = CMTObserver<String>.init("-1")
    let observerBackGroundColor = CMTObserver<UIColor>.init(UIColor.orange)
    var count: Int = 0
    var observerModel3: CMTObserver<TestModel>? = CMTObserver<TestModel>.init(nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label = CMTLabel.init(frame: CGRect.init(x: 100, y: 100, width: 100, height: 100))
        label.bind.text = observer
        label.bind.backgroundColor = observerBackGroundColor
        self.view.addSubview(label)
        
        let button = UIButton.init(type: .system)
        button.frame = CGRect.init(x: 100, y: 200, width: 100, height: 100)
        button.setTitle("点我", for: .normal)
        button.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        self.view.addSubview(button)
        
        let label22 = CMTLabel.init(frame: CGRect.init(x: 100, y: 300, width: 100, height: 100))
        label22.bind.text = observer?.addListener({ v1, v2 in
            print("label22 v1=\(String(describing: v1)), v2=\(String(describing: v2))")
            return true
        })
        label22.bind.backgroundColor = observerBackGroundColor
        self.view.addSubview(label22)
        
        let label33 = CMTLabel.init(frame: CGRect.init(x: 100, y: 500, width: 100, height: 100))
        label33.bind.text = observerModel3?.ts({ model in
            return model?.name
        })
        label33.bind.backgroundColor = observerModel3?.ts({ model in
            if model?.age ?? 0 < 10 {
                return UIColor.red
            }
            return UIColor.green
        })
        self.view.addSubview(label33)
        
        let _ = CMTButton.init(frame: CGRect.init(x: 100, y: 600, width: 100, height: 100))
        
       
    }

    @objc func btnAction(_ sender: UIButton) {
        count += 1
        observer?.value = "\(count)"
        
        if count == 10 {
//            observer = nil
            observerBackGroundColor.value = UIColor.green
        }
        if count == 12 {
            observer = nil
            observer2.value = "-2"
            observerBackGroundColor.value = UIColor.yellow
        }
        
        if (count == 10) {
            let model = TestModel(name: "nnnnn", age: 10, detail: DetailModel(remark: "rrrrr", context: "ccccc"))
            observerModel3?.value = model
        }
        
        if (count == 20) {
//            observerModel3 = nil
        }
    }
}


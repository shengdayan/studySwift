//
//  ViewController.swift
//  swift-06
//
//  Created by chen on 2017/1/17.
//  Copyright © 2017年 Aircos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var stepper:UIStepper!
    var label:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper = UIStepper()
        stepper.center = self.view.center
        //设置stepper的范围和初始值
        stepper.minimumValue = 1
        stepper.value = 5.5
        //每次递增的值
        stepper.stepValue = 0.5
        //设置可以按住不放来连续增长改变值
        stepper.isContinuous = true
        stepper.addTarget(self, action: #selector(stepperValueIsChanged), for: .valueChanged)
        self.view.addSubview(stepper)
        
        label = UILabel(frame:CGRect(x:100, y:200, width:300, height:30))
//        label.text = "当前值为：\(stepper.value)"
        label.text = String(stepper.value)
        self.view.addSubview(label)
    }
        func stepperValueIsChanged() {
            label.text = String(stepper.value)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


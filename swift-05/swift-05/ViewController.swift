//
//  ViewController.swift
//  swift-05
//
//  Created by chen on 2017/1/17.
//  Copyright © 2017年 Aircos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var pickView:UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickView = UIPickerView()
        pickView.delegate = self
        pickView.dataSource = self
        //设置选框的默认值
        pickView.selectRow(1, inComponent: 0, animated: true)
        pickView.selectRow(2, inComponent: 1, animated: true)
        pickView.selectRow(3, inComponent: 2, animated: true)
        self.view.addSubview(pickView)
        
        let button = UIButton(frame:CGRect(x:0, y:0, width:100, height:30))
        button.center = self.view.center
        button.backgroundColor = UIColor.blue
        button.setTitle("获取信息", for: .normal)
        button.addTarget(self, action: #selector(getPickerViewValue), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 9
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(row)+"-"+String(component)+"-"+"😑"
    }
    func getPickerViewValue() -> Void {
        let message = String(pickView.selectedRow(inComponent: 0))+"-"+String(pickView.selectedRow(inComponent: 1))+"-"+String(pickView.selectedRow(inComponent: 2))
        let alert = UIAlertController(title:"被选中的索引是",message:message, preferredStyle: .alert)
        let action = UIAlertAction(title:"👌", style: .cancel, handler:nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    //设置框的大小
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        if 0 == component {
            return 100
        } else {
            return 90
        }
    }
    //设置行高
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


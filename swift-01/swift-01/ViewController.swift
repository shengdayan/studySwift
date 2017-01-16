//
//  ViewController.swift
//  swift-01
//
//  Created by chen on 2017/1/16.
//  Copyright © 2017年 Aircos. All rights reserved.
//

import UIKit
let label1 = UILabel(frame:CGRect(x:100, y:250, width:200, height:50))

class ViewController: UIViewController, UITextFieldDelegate{
    var label2:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //时间选择器
        let dataPicker = UIDatePicker(frame: CGRect(x:0, y:10, width:UIScreen.main.bounds.width, height:200))
        dataPicker.datePickerMode = .time
        dataPicker.locale = Locale(identifier:"zh_CN")
        dataPicker.addTarget(self, action: #selector(dateChanged(dataPicker:)), for: .valueChanged)
                self.view.addSubview(dataPicker)
        
        label2 = UILabel(frame:CGRect(x:100, y:400, width:200, height:50))
        label2.backgroundColor = UIColor.gray
        label2.textColor = UIColor.green
        label2.textAlignment = .center
        self.view.addSubview(label2)
        
        label1.backgroundColor = UIColor.brown
        label1.textColor = UIColor.orange
        label1.textAlignment = .center
        self.view.addSubview(label1)
        
        let textFiled = UITextField(frame:CGRect(x:100,y:320,width:200,height:50))
        textFiled.borderStyle = UITextBorderStyle.roundedRect
        
        textFiled.placeholder = "请输入姓名"
        textFiled.layer.borderWidth = 1
        textFiled.layer.cornerRadius = 5
        textFiled.delegate = self
        textFiled.returnKeyType = UIReturnKeyType.go
        self.view.addSubview(textFiled)
        
        
        let button = UIButton(type:.system)
        button.frame = CGRect(x:150, y:460, width:50, height:20)
        button.setTitle("确定", for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(tapped(_:)), for: .touchUpInside)
        
        }
        
        func tapped(_ button:UIButton) -> Void {
            label2.text = "😀"
        }
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            label2.text = textField.text
            return true
        }
            
        func dateChanged(dataPicker:UIDatePicker) ->(Void) {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy年MM月dd日 HH:mm:ss"
            label1.text = formatter.string(from: dataPicker.date)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


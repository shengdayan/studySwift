//
//  ViewController.swift
//  swift-08
//
//  Created by chen on 2017/1/18.
//  Copyright © 2017年 Aircos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //字符串的创建,两个空字符串等价
        let something = ""
        let anything = String()
        
        if anything.isEmpty {
            print("nothing to see here")
        }
        if something.isEmpty {
            print("it's too")
        }
        //可变字符串
        var variableString = "hello"
        variableString += "Word"
        print("variableString = \(variableString)")
        
        let button = UIButton(frame:CGRect(x:50, y:100, width:50, height:50))
        button.backgroundColor = UIColor.orange
        button.setTitle("点击", for: .normal)
        button.addTarget(self, action: #selector(clickButton(_:)), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        let alertVC = UIAlertController(title: "欢迎进入swift", message: "这是一个新的旅程", preferredStyle: .actionSheet)
//        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
//        alertVC.addAction(action)
//        self.present(alertVC, animated: true, completion: nil)
//    }

    override func viewWillAppear(_ animated: Bool) {
        let alertVC = UIAlertController(title: "欢迎进入swift", message: "这是一个新的旅程", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
        alertVC.addAction(action)
        self.present(alertVC, animated: true, completion: nil)
    }
    func clickButton(_ button:UIButton) -> Void {
        //字符串插值
        let num = 3
        let result = "\(num) * 2.5 = \(Double(num)*2.5)"
        let alert = UIAlertController(title:"值为：", message:result,preferredStyle:.alert)
        let action = UIAlertAction(title:"ok", style:.default, handler:{
            action in print("值为\(result)")
        })
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


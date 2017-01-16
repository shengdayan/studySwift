//
//  ViewController.swift
//  swift-03
//
//  Created by chen on 2017/1/16.
//  Copyright © 2017年 Aircos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let alertController = UIAlertController(title:"系统提示", message:"您确定要离开吗", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title:"取消", style: .cancel,handler:{
            action in
            let label = UILabel(frame:CGRect(x:100, y:100, width:200, height:50))
            label.text = "🙄也是日了狗了"
            label.font = UIFont.boldSystemFont(ofSize: 13)
            self.view.addSubview(label)
            
        })
        let okAction = UIAlertAction(title:"好的", style: .default, handler:{
            action in print("点击了确定")
        })
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


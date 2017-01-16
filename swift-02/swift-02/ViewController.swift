//
//  ViewController.swift
//  swift-02
//
//  Created by chen on 2017/1/16.
//  Copyright © 2017年 Aircos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var uiswitch:UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textView = UITextView(frame:CGRect(x:10, y:100, width:200, height:100))
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.gray.cgColor
        self.view.addSubview(textView)
        textView.dataDetectorTypes = UIDataDetectorTypes.all//电话和网址都加链接
        let mail = UIMenuItem(title:"邮件",action:#selector(ViewController.onMail))
        let weixin = UIMenuItem(title:"微信",action:#selector(ViewController.onWeixin))
        let menu = UIMenuController()
        menu.menuItems = [mail,weixin]
        
        //开关
        uiswitch = UISwitch()
        uiswitch.center = CGPoint(x:100, y:50)
        uiswitch.isOn = true
        uiswitch.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        self.view.addSubview(uiswitch)
        
        let items = ["选项一","选项二","选项三"]
        let segmented = UISegmentedControl(items:items)
        segmented.center = self.view.center
        segmented.selectedSegmentIndex = 0
        segmented.addTarget(self, action: #selector(segmentDidchange(segmented:)), for: .valueChanged)
        self.view.addSubview(segmented)
        segmented.insertSegment(withTitle: "新增选项", at: 1, animated: true);
        segmented.tintColor = UIColor.red
        segmented.setTitle("swift", forSegmentAt: 2)
        //修改选项内容偏移位置
        segmented.setContentOffset(CGSize(width:10, height:2), forSegmentAt: 1)
        
        //进度条
        let progressView = UIProgressView(progressViewStyle:.default)
        progressView.frame = CGRect(x:20, y:250, width:200, height:20)
        progressView.progress = 0.5
        self.view.addSubview(progressView)
        progressView.setProgress(0.8, animated: true)
        progressView.progressTintColor = UIColor.green//已有进度条的颜色
        progressView.trackTintColor = UIColor.blue//剩余进度条的颜色
        
        //滑块
        let slider = UISlider(frame:CGRect(x:0, y:300,width:300, height:50))
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.value = 1
        self.view.addSubview(slider)
        slider.isContinuous = true
        slider.addTarget(self, action: #selector(sliderDidChange(slider:)), for: .valueChanged)
    }
    func switchDidChange() -> Void {
        print(uiswitch.isOn)
    }
    func onMail() -> Void {
        print("mail")
    }
    func onWeixin() -> Void {
        print("weiXin")
    }
    func sliderDidChange(slider:UISlider) -> Void {
        print(slider.value)
    }
    func segmentDidchange(segmented:UISegmentedControl) -> Void {
        print(segmented.selectedSegmentIndex)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


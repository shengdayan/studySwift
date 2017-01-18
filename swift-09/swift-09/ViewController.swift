//
//  ViewController.swift
//  swift-09
//
//  Created by chen on 2017/1/18.
//  Copyright © 2017年 Aircos. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    var tableView:UITableView!//！是强制取值表达式
//    var tableView:UITableView?//?是可选链表达式
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView = UITableView(frame:self.view.frame, style:.plain)
        tableView.separatorStyle = .none//去掉cell的下划线
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "cellId"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellId)
        }
        cell!.textLabel!.text = "\(indexPath.row)"
        cell!.imageView!.image = UIImage(named:"pic")
        return cell!

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


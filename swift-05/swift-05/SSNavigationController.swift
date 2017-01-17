
//
//  SSNavigationController.swift
//  swift-05
//
//  Created by chen on 2017/1/16.
//  Copyright © 2017年 Aircos. All rights reserved.
//

import UIKit

class SSNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let firstVC = FirstTableViewController()
        let tabbarVC = SSTabbarVC(root)
        
        addChildViewController(tabbarVC)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

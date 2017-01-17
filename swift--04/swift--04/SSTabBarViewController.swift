//
//  SSTabBarViewController.swift
//  swift--04
//
//  Created by chen on 2017/1/16.
//  Copyright © 2017年 Aircos. All rights reserved.
//

import UIKit

class SSTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UITabBar.appearance().tintColor = UIColor.orange
        
        addChildViewController(childController: HomeViewController(), title: "首页", imageName: "tb_home")
        addChildViewController(childController: MessageViewController(), title: "消息", imageName: "tb_message")
        addChildViewController(childController: DiscoverViewController(), title: "发现", imageName: "tb_discover")
        addChildViewController(childController: ProfileViewController(), title: "我的", imageName: "tb_profile")

    }
    private func addChildViewController(childController: UIViewController, title:String, imageName:String){
        // 设置image的位置(如果图片带有文字，会偏上，设置此属性，使图片向下偏移)
        // childController.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0)
        
        childController.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        childController.tabBarItem.selectedImage = UIImage(named: "\(imageName)_selected")?.withRenderingMode(.alwaysOriginal)
        
        childController.tabBarItem.setTitleTextAttributes([NSFontAttributeName : UIFont.systemFont(ofSize: 13)], for: .normal)
        childController.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.orange], for: .selected)
        
        childController.tabBarItem.title = title
        childController.navigationItem.title = title
        
        let nav = UINavigationController(rootViewController: childController)
        
        addChildViewController(nav)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

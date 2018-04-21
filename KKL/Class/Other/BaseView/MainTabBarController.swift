//
//  MainTabBarController.swift
//  KKL
//
//  Created by hzb on 2018/4/12.
//  Copyright © 2018年 Lumen. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBar = UITabBarItem.appearance()
        let attrs_Normal = [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 18),NSAttributedStringKey.foregroundColor:UIColor.black]
        let attrs_Select = [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 18),NSAttributedStringKey.foregroundColor:UIColor.darkGray]
        tabBar.setTitleTextAttributes(attrs_Normal, for: .normal)
        tabBar.setTitleTextAttributes(attrs_Select, for: .selected)
        setupUI()
    }

}
extension MainTabBarController{
    
    fileprivate func setupUI(){
        setValue(MainTabBar(), forKey: "tabBar")
        let viewCV1 = UIViewController()
        viewCV1.view.backgroundColor = UIColor.green
        let viewCV2 = UIViewController()
        viewCV2.view.backgroundColor = UIColor.white
        let viewCV3 = UIViewController()
        viewCV3.view.backgroundColor = UIColor.orange
        let viewCV4 = UIViewController()
        viewCV4.view.backgroundColor = UIColor.red
        
        let vcArray:[UIViewController] = [viewCV1,viewCV2,viewCV3,viewCV4]
        let titleArray = ["other","fun","sever","me"]
        for (index,vc) in vcArray.enumerated() {
            vc.tabBarItem.title = titleArray[index]
            vc.tabBarItem.image = UIImage(named: "essence")
            vc.tabBarItem.selectedImage = UIImage(named: "essence")
            let nav = UINavigationController(rootViewController: vc)
            addChildViewController(nav)
            
        }
    }
    
}

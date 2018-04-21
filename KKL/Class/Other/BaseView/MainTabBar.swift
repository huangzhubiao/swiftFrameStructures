//
//  MainTabBar.swift
//  KKL
//
//  Created by hzb on 2018/4/12.
//  Copyright © 2018年 Lumen. All rights reserved.
//

import UIKit

class MainTabBar: UITabBar {


    override func layoutSubviews() {
        //调用父类的方法
        super.layoutSubviews()
        
        let zc_width:CGFloat = self.frame.size.width;
        var zc_height:CGFloat = self.frame.size.height;
        
        /*代替之前的49*/
        let kTabBarHeight: CGFloat = (UIApplication.shared.statusBarFrame.size.height > 20.0 ? 83.0:49.0)
        
//        let kNavBarHeight:CGFloat = 44.0
//        let kStatusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
//        /*代替之前的64*/
//        let kTopHeight = kStatusBarHeight + kNavBarHeight
        
        if zc_height > kTabBarHeight {
            zc_height = kTabBarHeight
        }
        
        let btnW = zc_width / 5
        let btnH = zc_height
        let btnY: CGFloat = 0
        var index: CGFloat = 0
        
        for view in subviews {
            if view.isKind(of: NSClassFromString("UITabBarButton")!){
           
                let buttonX = (index < 2) ? index * btnW : (index + 1) * btnW
                view.frame = CGRect(x: buttonX, y: btnY, width: btnW, height: btnH)
                index += 1
            }
        }
        
    }
    
}

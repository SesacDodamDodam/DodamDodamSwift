//
//  ViewController.swift
//  SeSACTON_iOS
//
//  Created by 홍준혁 on 2023/05/27.
//

import UIKit

import SnapKit

final class TabBarController: UITabBarController {
    
    fileprivate lazy var defaultTabBarHeight = { tabBar.frame.size.height }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        setUpTabBar()
        setNavigation()
    }
    
    private func setUpTabBar(){
//        self.tabBar.tintColor = .brandColor
//        self.tabBar.unselectedItemTintColor = .black
//        self.tabBar.isTranslucent = false
//        self.tabBar.backgroundColor = .white
//
//        PostsVC.title = TextLiterals.postsViewControllerTitle
//        ListVC.title = TextLiterals.listViewControllerTitle
//        storageVC.title = TextLiterals.storageViewControllerTitle
//        settingVC.title = TextLiterals.settingViewControllerTitle
//
//        let ViewControllers:[UIViewController] = [PostsVC,ListVC,storageVC,settingVC]
//        self.setViewControllers(ViewControllers, animated: true)
//
//        PostsVC.tabBarItem.image = ImageLiterals.homeTabIcon
//        ListVC.tabBarItem.image = ImageLiterals.listTabIcon
//        storageVC.tabBarItem.image = ImageLiterals.unSaveBookMarkIcon
//        settingVC.tabBarItem.image = ImageLiterals.settingTabIcon
        
        self.hidesBottomBarWhenPushed = false
        viewWillLayoutSubviews()
    }
    
    private func setNavigation() {
        self.navigationItem.hidesBackButton = true
    }
}

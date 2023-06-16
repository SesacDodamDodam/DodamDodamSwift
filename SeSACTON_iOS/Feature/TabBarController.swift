//
//  ViewController.swift
//  SeSACTON_iOS
//
//  Created by 홍준혁 on 2023/05/27.
//

import UIKit

import SnapKit

final class TabBarController: UITabBarController {

    //fileprivate lazy var defaultTabBarHeight = { tabBar.frame.size.height }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBar()
        setNavigation()
        self.configureTabBar()
    }
    private func setUpTabBar(){
        let policyVC = PolicyViewController()
        let homeVC = HomeViewController()

        homeVC.title = "홈"
        policyVC.title = "정책찾기"
        homeVC.tabBarItem.image = UIImage.init(systemName: "house.fill")
        policyVC.tabBarItem.image = UIImage.init(systemName: "book")

        let navigationHome = UINavigationController(rootViewController: homeVC)
        let navigationPolicy = UINavigationController(rootViewController: policyVC)

        setViewControllers([navigationHome, navigationPolicy], animated: false)
        self.hidesBottomBarWhenPushed = false
        viewWillLayoutSubviews()
    }

    private func setNavigation() {
        self.moreNavigationController.setNavigationBarHidden(false, animated: false)
        self.navigationItem.largeTitleDisplayMode = .never
    }
}
extension TabBarController {
    func configureTabBar() {
        self.tabBar.tintColor = .label
        self.tabBar.layer.masksToBounds = true
        self.tabBar.layer.backgroundColor = UIColor.systemBackground.cgColor
        self.tabBar.layer.borderColor = UIColor.lightGray.cgColor
    }
}

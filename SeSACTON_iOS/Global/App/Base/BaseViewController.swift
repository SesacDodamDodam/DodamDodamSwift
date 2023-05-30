//
//  BaseViewController.swift
//  SeSACTON_iOS
//
//  Created by 홍준혁 on 2023/05/28.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        render()
        configUI()
    }

    func render() {}
    
    func configUI() {
        view.backgroundColor = .white
    }
}

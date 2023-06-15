//
//  WebViewController.swift
//  SeSACTON_iOS
//
//  Created by 홍준혁 on 2023/06/15.
//

import UIKit

import WebKit
import SnapKit
import AVFoundation
import AVKit


final class WebViewController: UIViewController {

    var url: String = ""
    
    lazy var webView: WKWebView = {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let configuration = WKWebViewConfiguration()
        configuration.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero, configuration: configuration)
        return webView
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.leftButton, for: .normal)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    let headTitle: UILabel = {
        let label = UILabel()
        label.text = "일상 챙김"
        label.font = UIFont(name: "Avenir-Black", size: 16)
        return label
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = ImageLiterals.webViewText
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        render()
        loadWebView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    func render() {
        view.addSubviews(
            backButton,
            headTitle,
            webView,
            imageView
        )
        
        backButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(80)
            $0.size.equalTo(44)
            $0.leading.equalToSuperview()
        }
        view.bringSubviewToFront(backButton)
        
        headTitle.snp.makeConstraints {
            $0.centerY.equalTo(backButton)
            $0.centerX.equalToSuperview()
        }
        view.bringSubviewToFront(headTitle)
        
        webView.snp.makeConstraints {
            $0.top.equalTo(headTitle.snp.bottom).offset(35)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(200)
        }
        
        imageView.snp.makeConstraints {
            $0.top.equalTo(webView.snp.bottom).offset(13)
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.height.equalTo(162)
        }
    }
    
    func loadWebView() {
        guard let url = URL(string: self.url) else {
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    @objc
    func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}

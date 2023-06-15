//
//  HomeViewController.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/05/30.
//
import UIKit
import SnapKit

final class HomeViewController: UIViewController {
    
    let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = ImageLiterals.mainIcon
        return imageView
    }()
    
    let mainTopDesignImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = ImageLiterals.mainTopDesign
        return imageView
    }()
    
    lazy var moveToNextViewButton: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.moveToNextViewButton, for: .normal)
        button.addTarget(self, action: #selector(moveToNextViewButtonAction), for: .touchUpInside)
        return button
    }()
    
    let homeViewPickView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = ImageLiterals.pickView
        return imageView
    }()
    
    let pickViewText: UILabel = {
        let label = UILabel()
        label.text = "1-1. 신체적 변화"
        label.font = UIFont(name: "Avenir-Black", size: 16)
        return label
    }()
    
    let pickViewSubText: UILabel = {
        let label = UILabel()
        label.text = "소요 시간 12:03"
        label.textColor = .white
        label.font = UIFont(name: "Avenir-Black", size: 12)
        return label
    }()
    
    let playButton: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.playIcon, for: .normal)
        return button
    }()
    
    let midLabel: UILabel = {
        let label = UILabel()
        label.text = "마음챙김을 일상으로"
        label.font = UIFont(name: "Avenir-Black", size: 20)
        return label
    }()
    
    let video1: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.video1, for: .normal)
        return button
    }()
    
    let video2: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.video2, for: .normal)
        return button
    }()
    
    let video3: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.video3, for: .normal)
        return button
    }()
    
    let video4: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.video4, for: .normal)
        return button
    }()
    
    let video1Label: UILabel = {
        let label = UILabel()
        label.text = "초심자를 위한 10분 명상"
        label.font = UIFont(name: "Avenir-Black", size: 12)
        return label
    }()
    
    let video2Label: UILabel = {
        let label = UILabel()
        label.text = "3분 동안 간단하게 할 수 있는 마/n음챙김"
        label.font = UIFont(name: "Avenir-Black", size: 12)
        return label
    }()
    
    let video3Label: UILabel = {
        let label = UILabel()
        label.text = "임산부와 태아를 위한 마음정화"
        label.font = UIFont(name: "Avenir-Black", size: 12)
        return label
    }()
    
    let video4Label: UILabel = {
        let label = UILabel()
        label.text = "양육자는 지치면 안되나요?"
        label.font = UIFont(name: "Avenir-Black", size: 12)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        render()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    func render() {
        view.addSubviews(
            iconImage,
            mainTopDesignImageView,
            moveToNextViewButton,
            homeViewPickView,
            pickViewText,
            pickViewSubText,
            playButton,
            midLabel,
            video1,
            video2,
            video3,
            video4,
            video1Label,
            video2Label,
            video3Label,
            video4Label
        )
        
        iconImage.snp.makeConstraints {
            $0.height.equalTo(25)
            $0.width.equalTo(68)
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(60)
        }
        
        mainTopDesignImageView.snp.makeConstraints {
            $0.height.equalTo(260)
            $0.top.equalToSuperview().offset(105)
            $0.leading.trailing.equalToSuperview()
        }
        
        moveToNextViewButton.snp.makeConstraints {
            $0.height.equalTo(22)
            $0.width.equalTo(11)
            $0.top.equalToSuperview().offset(139)
            $0.trailing.equalToSuperview().inset(20)
        }
        
        homeViewPickView.snp.makeConstraints {
            $0.height.equalTo(82)
            $0.top.equalTo(moveToNextViewButton.snp.bottom).offset(90)
            $0.leading.trailing.equalToSuperview().inset(20)
        }
        
        pickViewText.snp.makeConstraints {
            $0.top.equalTo(moveToNextViewButton.snp.bottom).offset(105)
            $0.leading.equalToSuperview().offset(38)
        }
        
        pickViewSubText.snp.makeConstraints {
            $0.top.equalTo(pickViewText.snp.bottom).offset(8)
            $0.leading.equalToSuperview().offset(38)
        }
        
        playButton.snp.makeConstraints {
            $0.top.equalTo(moveToNextViewButton.snp.bottom).offset(113)
            $0.trailing.equalToSuperview().inset(40)
            $0.size.equalTo(34)
        }
        
        midLabel.snp.makeConstraints {
            $0.top.equalTo(playButton.snp.bottom).offset(84)
            $0.leading.equalToSuperview().offset(20)
        }
        
        video1.snp.makeConstraints {
            $0.top.equalTo(midLabel.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(20)
            $0.height.equalTo(97)
            $0.width.equalTo(160)
        }
        
        video2.snp.makeConstraints {
            $0.top.equalTo(midLabel.snp.bottom).offset(20)
            $0.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(97)
            $0.width.equalTo(160)
        }
        
        video3.snp.makeConstraints {
            $0.top.equalTo(video1.snp.bottom).offset(46)
            $0.leading.equalToSuperview().offset(20)
            $0.height.equalTo(97)
            $0.width.equalTo(160)
        }
        
        video4.snp.makeConstraints {
            $0.top.equalTo(video1.snp.bottom).offset(46)
            $0.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(97)
            $0.width.equalTo(160)
        }
        
        video1Label.snp.makeConstraints {
            $0.top.equalTo(video1.snp.bottom).offset(5)
            $0.leading.equalToSuperview().inset(25)
        }
        
        video2Label.snp.makeConstraints {
            $0.top.equalTo(video2.snp.bottom).offset(5)
            $0.leading.equalToSuperview().offset(199)
        }
        
        video3Label.snp.makeConstraints {
            $0.top.equalTo(video3.snp.bottom).offset(5)
            $0.leading.equalToSuperview().inset(25)
        }
        
        video4Label.snp.makeConstraints {
            $0.top.equalTo(video4.snp.bottom).offset(5)
            $0.leading.equalToSuperview().offset(199)
        }
    }
    
    @objc
    func moveToNextViewButtonAction() {
        let nextVC = MomContentsViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

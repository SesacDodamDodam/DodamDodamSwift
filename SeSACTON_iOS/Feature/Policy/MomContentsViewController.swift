//
//  MomContentsViewController.swift
//  SeSACTON_iOS
//
//  Created by 홍준혁 on 2023/06/15.
//

import UIKit
import SnapKit

final class MomContentsViewController: UIViewController {
    
    private var isVideoButtonTapped = false
    
    let momTopImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = ImageLiterals.momTopImage
        return imageView
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.alpha = 0.2
        return view
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.leftButton, for: .normal)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    let headTitle: UILabel = {
        let label = UILabel()
        label.text = "마음 돌봄"
        label.font = UIFont(name: "Avenir-Black", size: 16)
        return label
    }()
    
    let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "1장 산후에 생기는 변화"
        label.font = UIFont(name: "Avenir-Black", size: 20)
        return label
    }()
    
    lazy var downButton: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.downIcon, for: .normal)
        button.addTarget(self, action: #selector(downButtonTapped), for: .touchUpInside)
        return button
    }()
    
    let video11ImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = ImageLiterals.pickView
        return imageView
    }()
    
    let video11Text: UILabel = {
        let label = UILabel()
        label.text = "1-1. 배웠던 것과 실제"
        label.font = UIFont(name: "Avenir-Black", size: 16)
        return label
    }()
    
    let video11SubText: UILabel = {
        let label = UILabel()
        label.text = "소요 시간 12:03"
        label.textColor = .white
        label.font = UIFont(name: "Avenir-Black", size: 12)
        return label
    }()
    
    lazy var video11PlayButton: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.playIcon, for: .normal)
        button.addTarget(self, action: #selector(playButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    let video12ImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = ImageLiterals.mom2content
        return imageView
    }()
    
    let video13ImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = ImageLiterals.mom3content
        return imageView
    }()
    
    let lineView2: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.alpha = 0.2
        return view
    }()
    
    let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "2장 돌봄의 가치를 알아주세요"
        label.font = UIFont(name: "Avenir-Black", size: 20)
        return label
    }()
    
    let secondDownButton: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.downIcon, for: .normal)
        return button
    }()
    
    let lineView3: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.alpha = 0.2
        return view
    }()
    
    let lastLabel: UILabel = {
        let label = UILabel()
        label.text = "3장 살다보면 잊기 쉬운 것들"
        label.font = UIFont(name: "Avenir-Black", size: 20)
        return label
    }()
    
    let lastDownButton: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiterals.downIcon, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        
        render()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    func render() {
        view.addSubviews(
            backButton,
            headTitle,
            momTopImageView,
            lineView,
            firstLabel,
            downButton,
            video11ImageView,
            video11Text,
            video11SubText,
            video11PlayButton,
            video12ImageView,
            video13ImageView,
            lineView2,
            secondLabel,
            secondDownButton,
            lineView3,
            lastLabel,
            lastDownButton
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
        
        momTopImageView.snp.makeConstraints {
            $0.height.equalTo(380)
            $0.top.equalToSuperview()
            $0.leading.trailing.equalToSuperview()
        }
        
        lineView.snp.makeConstraints {
            $0.height.equalTo(1)
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(momTopImageView.snp.bottom)
        }
        
        firstLabel.snp.makeConstraints {
            $0.top.equalTo(lineView.snp.bottom).offset(15)
            $0.leading.equalToSuperview().offset(20)
        }
        
        downButton.snp.makeConstraints {
            $0.centerY.equalTo(firstLabel)
            $0.size.equalTo(24)
            $0.trailing.equalToSuperview().inset(28)
        }
        
        video11ImageView.snp.makeConstraints {
            $0.top.equalTo(firstLabel.snp.bottom).offset(0)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(0)
        }
        
        video11Text.snp.makeConstraints {
            $0.top.equalTo(firstLabel.snp.bottom).offset(35)
            $0.leading.equalToSuperview().inset(38)
            $0.height.equalTo(0)
        }
        
        video11SubText.snp.makeConstraints {
            $0.top.equalTo(video11Text.snp.bottom).offset(8)
            $0.leading.equalToSuperview().inset(38)
            $0.height.equalTo(0)
        }
        
        video11PlayButton.snp.makeConstraints {
            $0.top.equalTo(downButton.snp.bottom).offset(44)
            $0.trailing.equalToSuperview().inset(40)
            $0.size.equalTo(0)
        }
        
        video12ImageView.snp.makeConstraints {
            $0.top.equalTo(video11ImageView.snp.bottom).offset(12)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(0)
        }
        
        video13ImageView.snp.makeConstraints {
            $0.top.equalTo(video12ImageView.snp.bottom).offset(12)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(0)
        }
        
        lineView2.snp.makeConstraints {
            $0.top.equalTo(video13ImageView.snp.bottom).offset(5)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(8)
        }
        
        secondLabel.snp.makeConstraints {
            $0.top.equalTo(lineView2.snp.bottom).offset(15)
            $0.leading.equalToSuperview().offset(20)
        }
        
        secondDownButton.snp.makeConstraints {
            $0.centerY.equalTo(secondLabel)
            $0.trailing.equalToSuperview().inset(28)
            $0.size.equalTo(24)
        }
        
        lineView3.snp.makeConstraints {
            $0.top.equalTo(secondLabel.snp.bottom).offset(16)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(8)
        }
        
        lastLabel.snp.makeConstraints {
            $0.top.equalTo(lineView3.snp.bottom).offset(14)
            $0.leading.equalToSuperview().offset(20)
        }
        
        lastDownButton.snp.makeConstraints {
            $0.centerY.equalTo(lastLabel)
            $0.trailing.equalToSuperview().inset(28)
            $0.size.equalTo(24)
        }
    }
    
    @objc
    func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc
    func downButtonTapped() {
        UIView.animate(withDuration: 2, animations: {
            if self.isVideoButtonTapped {
                self.isVideoButtonTapped.toggle()
                self.video11ImageView.snp.remakeConstraints {
                    $0.top.equalTo(self.firstLabel.snp.bottom).offset(20)
                    $0.leading.trailing.equalToSuperview().inset(20)
                    $0.height.equalTo(0)
                }
                
                self.video11Text.snp.remakeConstraints {
                    $0.top.equalTo(self.firstLabel.snp.bottom).offset(35)
                    $0.leading.equalToSuperview().inset(38)
                    $0.height.equalTo(0)
                }
                
                self.video11SubText.snp.remakeConstraints {
                    $0.top.equalTo(self.video11Text.snp.bottom).offset(8)
                    $0.leading.equalToSuperview().inset(38)
                    $0.height.equalTo(0)
                }
                
                self.video11PlayButton.snp.remakeConstraints {
                    $0.top.equalTo(self.downButton.snp.bottom).offset(44)
                    $0.trailing.equalToSuperview().inset(40)
                    $0.size.equalTo(0)
                }
                
                self.video12ImageView.snp.remakeConstraints {
                    $0.top.equalTo(self.video11ImageView.snp.bottom).offset(12)
                    $0.leading.trailing.equalToSuperview().inset(20)
                    $0.height.equalTo(0)
                }
                
                self.video13ImageView.snp.remakeConstraints {
                    $0.top.equalTo(self.video12ImageView.snp.bottom).offset(12)
                    $0.leading.trailing.equalToSuperview().inset(20)
                    $0.height.equalTo(0)
                }
            } else {
                self.isVideoButtonTapped.toggle()
                self.video11ImageView.snp.remakeConstraints {
                    $0.top.equalTo(self.firstLabel.snp.bottom).offset(20)
                    $0.leading.trailing.equalToSuperview().inset(10)
                    $0.height.equalTo(92)
                }
                
                self.video11Text.snp.remakeConstraints {
                    $0.top.equalTo(self.firstLabel.snp.bottom).offset(35)
                    $0.leading.equalToSuperview().inset(38)
                    $0.height.equalTo(20)
                }
                
                self.video11SubText.snp.remakeConstraints {
                    $0.top.equalTo(self.video11Text.snp.bottom).offset(8)
                    $0.leading.equalToSuperview().inset(38)
                    $0.height.equalTo(15)
                }
                
                self.video11PlayButton.snp.remakeConstraints {
                    $0.top.equalTo(self.downButton.snp.bottom).offset(44)
                    $0.trailing.equalToSuperview().inset(40)
                    $0.size.equalTo(34)
                }
                
                self.video12ImageView.snp.remakeConstraints {
                    $0.top.equalTo(self.video11ImageView.snp.bottom).offset(12)
                    $0.leading.trailing.equalToSuperview().inset(20)
                    $0.height.equalTo(82)
                }
                
                self.video13ImageView.snp.remakeConstraints {
                    $0.top.equalTo(self.video12ImageView.snp.bottom).offset(12)
                    $0.leading.trailing.equalToSuperview().inset(20)
                    $0.height.equalTo(82)
                }
            }
        })
    }
    
    @objc
    func playButtonDidTap() {
        let nextVC = WebViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

//
//  FilterResultViewController.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/16.
//

import UIKit
import SnapKit

final class FilterResultViewController: UIViewController {
    // MARK: property
    let contentView = UIView()
    let resultLabel: UILabel = {
        let label = UILabel()
        label.text = "'동작구'의 '양육'정책을 보여드려요."
        label.textColor = UIColor(hex: "#000000")
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.textAlignment = .left

        return label
        
    }()
    let clickableImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = ImageLiterals.policyText
        imageView.isUserInteractionEnabled = true // 터치 이벤트를 활성화해야 합니다.

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageViewTapped))
        imageView.addGestureRecognizer(tapGesture)

        return imageView
    }()
    let backButton: UIBarButtonItem = {
        let button = UIBarButtonItem()
        button.title = ""
        button.tintColor = .black
        return button
    }()
    let headTitle: UILabel = {
        let label = UILabel()
        label.text = "맞춤 정책"
        label.font = UIFont(name: "Avenir-Black", size: 16)
        return label
    }()
    // MARK: - cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.titleView = headTitle
        self.navigationController?.hidesBottomBarWhenPushed = false
        navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        setupLayout()
    }

    // MARK: - func
    @objc private func imageViewTapped(sender: UIImageView) {
        let viewController = ResultDetailViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
extension FilterResultViewController {
    private func setupLayout() {
        view.addSubview(contentView)
        contentView.addSubviews(resultLabel,clickableImageView)
        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        resultLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(142)
            $0.leading.equalToSuperview().inset(22)
        }
        clickableImageView.snp.makeConstraints {
            $0.top.equalTo(resultLabel.snp.bottom).offset(36)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(323)
            $0.height.equalTo(127)
        }
    }
}

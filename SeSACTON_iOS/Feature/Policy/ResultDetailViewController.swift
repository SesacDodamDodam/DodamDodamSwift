//
//  ResultDetailViewController.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/16.
//

import UIKit
import SnapKit

final class ResultDetailViewController: UIViewController {
    // MARK: property
    let contentView = UIView()
    let resultImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = ImageLiterals.policyViewText
        return imageView
    }()
    let backButton: UIBarButtonItem = {
        let button = UIBarButtonItem()
        button.title = ""
        button.tintColor = .black
        return button
    }()
    // MARK: - cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "맞춤 정책"
        self.navigationController?.hidesBottomBarWhenPushed = false
        navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        setupLayout()
    }

    // MARK: - func
}
extension ResultDetailViewController {
    private func setupLayout() {
        view.addSubview(contentView)
        contentView.addSubviews(resultImageView)
        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        resultImageView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(142)
            $0.leading.equalToSuperview().inset(20)
        }
    }

}

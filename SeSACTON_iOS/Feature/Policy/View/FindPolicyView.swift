//
//  FacilityView.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/02.
//

import UIKit

class FindPolicyView: UIView {
    // MARK: - properties

    let policyContentView: UIStackView = {
        let stackView = UIStackView()
        let policyImage: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "policy")
            return imageView
        }()
        let cellNameLabel: UILabel = {
            $0.text = "맞춤 정책"
            $0.font = .systemFont(ofSize: 12.0, weight: .bold)
            return $0
        }(UILabel())
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        [policyImage, cellNameLabel].forEach {stackView.addArrangedSubview($0) }
        return stackView
    }()
    var policyBoxButton: UIButton = {
        $0.addTarget(nil, action: #selector(tapCellType), for: .touchUpInside)
        return $0
    }(UIButton())
//
//    private lazy var cellNameLabel: UILabel = {
//        $0.text = "맞춤 정책"
//        $0.font = .systemFont(ofSize: 12.0, weight: .bold)
//        return $0
//    }(UILabel())

    // MARK: - init

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(hex: "#CAACA3").cgColor
        self.backgroundColor = .white
        setupViews()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - func
    @objc func tapCellType() {
        print("cell name을 터치했습니다.")
    }

}
extension FindPolicyView {
    func setupViews() {
        [policyBoxButton, policyContentView].forEach { addSubview($0) }
        policyBoxButton.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        policyContentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

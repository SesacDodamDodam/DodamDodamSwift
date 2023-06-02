//
//  PolicyViewController.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/05/30.
//

import UIKit
import SnapKit
import RxSwift

final class PolicyViewController: UIViewController {
    var data: [PolicyData] = []

    // MARK: property
    private var topView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 3
        view.layer.borderColor = UIColor.blue.cgColor
        return view
    }()
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.layer.borderWidth = 3
        scrollView.layer.borderColor = UIColor.green.cgColor
        return scrollView
    }()
    private lazy var topContentView = UIView()
    private lazy var bottomContentView = UIView()
    let policyLabel: UILabel = {
        let label = UILabel()
        label.text = "정책 찾기"
        label.textColor = UIColor(hex: "#000000")
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .left
        label.layer.borderWidth = 1

        return label
    }()
    let policyAndFacilityView: UIStackView = {
        let stackView = UIStackView()
        let findPolicyView = FindPolicyView(frame: .zero)
        let facilityView = FacilityView(frame: .zero)
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 9.0

        [findPolicyView,facilityView].forEach {stackView.addArrangedSubview($0) }

        return stackView
    }()
    let todayPolicyLabel: UILabel = {
        let label = UILabel()
        label.text = "오늘의 정책"
        label.textColor = UIColor(hex: "#000000")
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.textAlignment = .left
        label.layer.borderWidth = 1

        return label
    }()
    private lazy var policyListStackView: UIStackView = {
        let stackView = UIStackView()
        let policyListView1 = PolicyCell(frame: .zero, data: data[0])
        let policyListView2 = PolicyCell(frame: .zero, data: data[1])
        let policyListView3 = PolicyCell(frame: .zero, data: data[2])
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 12.0
        [policyListView1, policyListView2, policyListView3].forEach { stackView.addArrangedSubview($0) }
        return stackView
    }()

    // MARK: - cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        data = dummyData
        navigationItem.title = nil
        view.backgroundColor = .white
        setupLayout()
    }

}
extension PolicyViewController {
    private func setupLayout() {
        view.addSubviews(topView, scrollView)
        topView.snp.makeConstraints {
            $0.top.leading.trailing.width.equalToSuperview()
            $0.height.equalTo(259)
        }
        topView.addSubview(topContentView)
        topContentView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.width.equalToSuperview()
            $0.height.equalTo(scrollView.contentLayoutGuide.snp.height)
        }
        topContentView.addSubviews(policyLabel, policyAndFacilityView)
        policyLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(56)
            $0.leading.trailing.equalToSuperview().inset(16.0)
        }
        policyAndFacilityView.snp.makeConstraints {
            $0.leading.trailing.width.equalToSuperview().inset(26.0)
            $0.top.equalTo(policyLabel.snp.bottom).offset(41.5)
            $0.height.equalTo(92)
        }
        scrollView.snp.makeConstraints {
            $0.leading.trailing.bottom.equalToSuperview()
            $0.top.equalTo(topView.snp.bottom)
        }
        scrollView.addSubview(bottomContentView)
        bottomContentView.snp.makeConstraints {
            $0.leading.trailing.bottom.equalToSuperview()
            $0.width.equalToSuperview()
            $0.height.equalTo(scrollView.contentLayoutGuide.snp.height)
        }
        bottomContentView.addSubviews(todayPolicyLabel, policyListStackView)
        todayPolicyLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24.0)
            $0.top.equalTo(bottomContentView).offset(10)
        }
        policyListStackView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(16.0)
            $0.top.equalTo(todayPolicyLabel.snp.bottom).offset(20)
        }
    }
}

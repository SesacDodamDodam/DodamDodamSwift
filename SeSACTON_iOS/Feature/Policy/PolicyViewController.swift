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
        view.frame = CGRect(x: 0, y: 0, width: .max, height: 285)
        view.backgroundColor = .white

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds

        let colors: [CGColor] = [
            .init(red: 1, green: 0.933, blue: 0.858, alpha: 1),
            .init(red: 1, green: 0.933, blue: 0.858, alpha: 0)
        ]

        gradientLayer.locations = [0, 0.85]
        gradientLayer.colors = colors

        gradientLayer.startPoint = CGPoint(x: 0.25, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.75, y: 1)
        view.layer.insertSublayer(gradientLayer, at: 0)

        return view
    }()
    private var bottomView = UIView()
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    private lazy var topContentView = UIView()
    let policyLabel: UILabel = {
        let label = UILabel()
        label.text = "정책 찾기"
        label.textColor = UIColor(hex: "#000000")
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .left

        return label
    }()
    let policyAndFacilityView: UIStackView = {
        let stackView = UIStackView()

        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 9.0

        return stackView
    }()
    let todayPolicyLabel: UILabel = {
        let label = UILabel()
        label.text = "오늘의 정책"
        label.textColor = UIColor(hex: "#000000")
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.textAlignment = .left

        return label
    }()
    private lazy var policyListStackView: UIStackView = {
        let stackView = UIStackView()
        let policyListView1 = PolicyCell(frame: .zero, data: data[0])
        let policyListView2 = PolicyCell(frame: .zero, data: data[1])
        let policyListView3 = PolicyCell(frame: .zero, data: data[2])
        let policyListView4 = PolicyCell(frame: .zero, data: data[3])
        let policyListView5 = PolicyCell(frame: .zero, data: data[4])
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 12.0
        stackView.layer.shadowOpacity = 0.5
        stackView.layer.shadowColor = UIColor(hex: "#DDDDDD").cgColor
        stackView.layer.shadowRadius = 3
        stackView.layer.shadowOffset = CGSize(width: 1, height: 3)
        [policyListView1, policyListView2, policyListView3,policyListView4,policyListView5].forEach { stackView.addArrangedSubview($0) }
        return stackView
    }()

    // MARK: - cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        data = dummyData
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        setupLayout()
    }

}
extension PolicyViewController {
    private func setupLayout() {
        let findPolicyView = FindPolicyButtonView(frame: .zero)
        let facilityView = FacilityButtonView(frame: .zero)
        findPolicyView.delegate = self
        facilityView.delegate = self
        policyAndFacilityView.addArrangedSubview(findPolicyView)
        policyAndFacilityView.addArrangedSubview(facilityView)
        view.addSubviews(topView, scrollView)
        topView.addSubview(topContentView)
        topContentView.addSubviews(policyLabel, policyAndFacilityView, todayPolicyLabel)
        scrollView.addSubview(bottomView)
        bottomView.addSubview(policyListStackView)

        topView.snp.makeConstraints {
            $0.top.leading.trailing.width.equalToSuperview()
            $0.height.equalTo(305)
        }
        topContentView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.height.width.equalToSuperview()
        }
        policyLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(56)
            $0.leading.trailing.equalToSuperview().inset(16.0)
        }
        policyAndFacilityView.snp.makeConstraints {
            $0.top.equalTo(policyLabel.snp.bottom).offset(41.5)
            $0.leading.trailing.width.equalToSuperview().inset(26.0)
            $0.height.equalTo(92)
        }
        todayPolicyLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24.0)
            $0.top.equalTo(policyAndFacilityView.snp.bottom).offset(43)
        }
        scrollView.snp.makeConstraints {
            $0.top.equalTo(topView.snp.bottom)
            $0.bottom.equalToSuperview()
            $0.width.equalTo(view.safeAreaLayoutGuide)
        }
        bottomView.snp.makeConstraints {
            $0.edges.width.equalToSuperview()
        }
        policyListStackView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(26.0)
            $0.trailing.equalToSuperview().inset(26.0)
            $0.top.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }
}
extension PolicyViewController: FindPolicyButtonViewDelegate, FacilityButtonViewDelegate {
    func findPolicyButtonTapped() {
        let viewController = FindPolicyViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }

    func facilityButtonTapped() {
        let viewController = FindPolicyViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

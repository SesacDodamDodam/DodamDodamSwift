//
//  FindPolicyViewController.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/13.
//

import UIKit
import SnapKit

final class FindPolicyViewController: UIViewController {
    // MARK: property
    let placelist = ["서울", "강서구","동작구","성동구","은평구","중남구"]

    let contentView = UIView()

    private lazy var selectStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 12.0
        return stackView
    }()
    let findPolicyLabel1: UILabel = {
        let label = UILabel()
        label.text = "카테고리"
        label.textColor = UIColor(hex: "#000000")
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .left

        return label
    }()
    private lazy var topStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 9.0
        return stackView
    }()
    let box1: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = "임신"
        let button = UIButton(configuration: config)

        let handler: UIButton.ConfigurationUpdateHandler = { button in
            switch button.state {
            case [.selected, .highlighted]:
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.configuration?.baseForegroundColor = UIColor(hex: "#F4CAB8")
                button.configuration?.baseBackgroundColor = UIColor(hex: "#F4CAB8")
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            case .selected:
                button.configuration?.title = "임신"
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            case .highlighted:
                button.configuration?.title = "임신"
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            default:
                button.configuration?.title = "임신"
                button.backgroundColor = .white
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.layer.cornerRadius = 8.0
                button.layer.borderWidth = 1
                button.layer.borderColor = UIColor(hex: "#CAACA3").cgColor
            }
        }
        button.configurationUpdateHandler = handler
        button.addTarget(self, action: #selector(selectOptionBtnAction), for: .touchDown)
        return button
    }()
    let box2: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = "출산"
        let button = UIButton(configuration: config)
        let handler: UIButton.ConfigurationUpdateHandler = { button in
            switch button.state {
            case [.selected, .highlighted]:
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.configuration?.baseForegroundColor = UIColor(hex: "#F4CAB8")
                button.configuration?.baseBackgroundColor = UIColor(hex: "#F4CAB8")
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            case .selected:
                button.configuration?.title = "출산"
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            case .highlighted:
                button.configuration?.title = "출산"
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            default:
                button.configuration?.title = "출산"
                button.backgroundColor = .white
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.layer.cornerRadius = 8.0
                button.layer.borderWidth = 1
                button.layer.borderColor = UIColor(hex: "#CAACA3").cgColor
            }
        }
        button.configurationUpdateHandler = handler
        button.addTarget(self, action: #selector(selectOptionBtnAction), for: .touchDown)
        return button
    }()
    let box4: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = "기타"
        let button = UIButton(configuration: config)
        let handler: UIButton.ConfigurationUpdateHandler = { button in
            switch button.state {
            case [.selected, .highlighted]:
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.configuration?.baseForegroundColor = UIColor(hex: "#F4CAB8")
                button.configuration?.baseBackgroundColor = UIColor(hex: "#F4CAB8")
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            case .selected:
                button.configuration?.title = "기타"
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            case .highlighted:
                button.configuration?.title = "기타"
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            default:
                button.configuration?.title = "기타"
                button.backgroundColor = .white
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.layer.cornerRadius = 8.0
                button.layer.borderWidth = 1
                button.layer.borderColor = UIColor(hex: "#CAACA3").cgColor
            }
        }
        button.configurationUpdateHandler = handler
        button.addTarget(self, action: #selector(selectOptionBtnAction), for: .touchDown)
        return button
    }()
    let box3: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = "양육"
        let button = UIButton(configuration: config)
        let handler: UIButton.ConfigurationUpdateHandler = { button in
            switch button.state {
            case [.selected, .highlighted]:
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.configuration?.baseForegroundColor = UIColor(hex: "#F4CAB8")
                button.configuration?.baseBackgroundColor = UIColor(hex: "#F4CAB8")
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            case .selected:
                button.configuration?.title = "양육"
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            case .highlighted:
                button.configuration?.title = "양육"
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.backgroundColor = UIColor(hex: "#F4CAB8")
            default:
                button.configuration?.title = "양육"
                button.backgroundColor = .white
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .regular)
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.layer.cornerRadius = 8.0
                button.layer.borderWidth = 1
                button.layer.borderColor = UIColor(hex: "#CAACA3").cgColor
            }
        }
        button.configurationUpdateHandler = handler
        button.addTarget(self, action: #selector(selectOptionBtnAction), for: .touchDown)
        return button
    }()
    var BtnArray = [UIButton]()

    private lazy var bottomStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 9.0
        return stackView
    }()
    let findPolicyLabel2: UILabel = {
        let label = UILabel()
        label.text = "지역"
        label.textColor = UIColor(hex: "#000000")
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .left

        return label
    }()
    let backButton: UIBarButtonItem = {
        let button = UIBarButtonItem()
        button.title = ""
        button.tintColor = .black
        return button
    }()

    var btnSelect: UIButton = {
        let button = UIButton()
        button.layer.borderWidth = 1
        return button
    }()

    let showResultButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = "결과 보기"
        let button = UIButton(configuration: config)
        let handler: UIButton.ConfigurationUpdateHandler = { button in
            switch button.state {
            case [.selected, .highlighted]:
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .semibold)
                button.configuration?.attributedTitle?.foregroundColor = .white
                button.configuration?.baseForegroundColor = UIColor(hex: "#CB8374")
                button.configuration?.baseBackgroundColor = UIColor(hex: "#CB8374")
                button.backgroundColor = UIColor(hex: "#CB8374")
            case .selected:
                button.configuration?.title = "결과 보기"
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .semibold)
                button.configuration?.attributedTitle?.foregroundColor = .white
                button.backgroundColor = UIColor(hex: "#CB8374")
            case .highlighted:
                button.configuration?.title = "결과 보기"
                button.layer.cornerRadius = 8
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .semibold)
                button.configuration?.attributedTitle?.foregroundColor = .white
                button.backgroundColor = UIColor(hex: "#CB8374")
            default:
                button.configuration?.title = "결과 보기"
                button.backgroundColor = UIColor(hex: "#ECEEF0")
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 14.0, weight: .semibold)
                button.configuration?.attributedTitle?.foregroundColor = UIColor(hex: "#B5B9BD")
                button.layer.cornerRadius = 8.0
            }
        }
        button.configurationUpdateHandler = handler
        button.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
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
        BtnArray.append(box1)
        BtnArray.append(box2)
        BtnArray.append(box3)
        BtnArray.append(box4)
        BtnArray.append(showResultButton)
    }

    // MARK: - func
    @objc func selectOptionBtnAction(_ sender: UIButton) {
        for Btn in BtnArray {
            if Btn == sender {
                // 만약 현재 버튼이 이 함수를 호출한 버튼이라면
                Btn.isSelected = true
            } else {
                // 이 함수를 호출한 버튼이 아니라면
                Btn.isSelected = false
            }
        }
    }
    @objc private func buttonTapped(sender: UIButton) {
        let nextViewController = FilterResultViewController()
        navigationController?.pushViewController(nextViewController, animated: true)
    }

}
extension FindPolicyViewController {
    private func setupLayout() {
        view.addSubview(contentView)
        contentView.addSubviews(findPolicyLabel1, selectStackView, findPolicyLabel2,showResultButton)
        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        findPolicyLabel1.snp.makeConstraints {
            $0.top.equalToSuperview().inset(142)
            $0.leading.equalToSuperview().inset(22)
        }
        [topStackView,bottomStackView].forEach {selectStackView.addArrangedSubview($0)}
        [box1, box2].forEach { topStackView.addArrangedSubview($0) }
        [box3, box4].forEach { bottomStackView.addArrangedSubview($0) }
        selectStackView.snp.makeConstraints {
            $0.top.equalTo(findPolicyLabel1.snp.bottom).offset(16)
            $0.leading.equalToSuperview().inset(20.0)
            $0.trailing.equalToSuperview().inset(20.0)
            $0.height.equalTo(98)
        }
        topStackView.snp.makeConstraints {
            $0.height.equalTo(43)
        }
        bottomStackView.snp.makeConstraints {
            $0.height.equalTo(43)
        }
        findPolicyLabel2.snp.makeConstraints {
            $0.top.equalTo(selectStackView.snp.bottom).offset(24)
            $0.leading.equalToSuperview().inset(22)
            $0.height.equalTo(21)
        }
        showResultButton.snp.makeConstraints {
            $0.top.equalTo(findPolicyLabel2.snp.bottom).offset(370)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(345)
            $0.height.equalTo(48)
        }

    }

}

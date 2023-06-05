//
//  FindPolicyViewController.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/13.
//

import UIKit
import SnapKit
import RxSwift

final class FindPolicyViewController: UIViewController {
    // MARK: property
    var status1 = false
    var status2 = false
    var status3 = false
    var status4 = false
    let placelist = PlaceName()
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
            button.addTarget(self, action: #selector(buttonTapped1), for: .touchDown)
            return button
        }()
        box1.widthAnchor.constraint(equalToConstant: 162).isActive = true
        box1.heightAnchor.constraint(equalToConstant: 43).isActive = true
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
            button.addTarget(self, action: #selector(buttonTapped2), for: .touchDown)
            return button
        }()
        box2.backgroundColor = .blue
        box2.widthAnchor.constraint(equalToConstant: 162).isActive = true
        box2.heightAnchor.constraint(equalToConstant: 43).isActive = true
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 9.0
        [box1,box2].forEach { stackView.addArrangedSubview($0) }
        return stackView
    }()
    private lazy var bottomStackView: UIStackView = {
        let stackView = UIStackView()
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
            button.addTarget(self, action: #selector(buttonTapped3), for: .touchDown)
            return button
        }()
        box3.widthAnchor.constraint(equalToConstant: 162).isActive = true
        box3.heightAnchor.constraint(equalToConstant: 43).isActive = true
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
            button.addTarget(self, action: #selector(buttonTapped4), for: .touchDown)
            return button
        }()
        box4.widthAnchor.constraint(equalToConstant: 162).isActive = true
        box4.heightAnchor.constraint(equalToConstant: 43).isActive = true
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 9.0
        [box3, box4].forEach { stackView.addArrangedSubview($0) }
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
    var placePickerView = UIPickerView()

    let showResultButton: UIButton = {
        let button = UIButton()

        return button
    }()

    // MARK: - cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        placePickerView.dataSource = self
        placePickerView.delegate = self
        view.backgroundColor = .white
        self.hidesBottomBarWhenPushed = false
        title = "맞춤 정책"
        navigationController?.navigationBar.isHidden = false
        navigationController?.hidesBottomBarWhenPushed = true
        navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        setupLayout()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.hidesBottomBarWhenPushed = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.hidesBottomBarWhenPushed = false
    }

    // MARK: - func
    @objc private func buttonTapped1(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        status1 = !status1
        if sender.isSelected == true {
            print(status1)
        }
    }
    @objc private func buttonTapped2(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        status2 = !status2
        if sender.isSelected == true {
            print(status2)
        }
    }
    @objc private func buttonTapped3(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        status3 = !status3
        if sender.isSelected == true {
            print(status3)
        }
    }
    @objc private func buttonTapped4(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        status4 = !status4
        if sender.isSelected == true {
            print(status4)
        }
    }
}
extension FindPolicyViewController: UIPickerViewDataSource, UIPickerViewDelegate  {
    private func setupLayout() {
        view.addSubview(contentView)
        contentView.addSubviews(findPolicyLabel1, selectStackView, findPolicyLabel2, placePickerView, showResultButton)
        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        findPolicyLabel1.snp.makeConstraints {
            $0.top.equalToSuperview().inset(104)
            $0.leading.equalToSuperview().inset(22)
        }
        [topStackView,bottomStackView].forEach {selectStackView.addArrangedSubview($0)}
        selectStackView.snp.makeConstraints {
            $0.top.equalTo(findPolicyLabel1.snp.bottom).offset(16)
            $0.leading.equalToSuperview().inset(20.0)
            $0.trailing.equalToSuperview().inset(20.0)
            $0.height.equalTo(98)
        }
        findPolicyLabel2.snp.makeConstraints {
            $0.top.equalTo(selectStackView.snp.bottom).offset(24)
            $0.leading.equalToSuperview().inset(22)
        }
        placePickerView.snp.makeConstraints {
            $0.top.equalTo(findPolicyLabel2.snp.bottom).offset(13)
            $0.width.equalTo(319)
            $0.height.equalTo(50)
        }
        showResultButton.snp.makeConstraints {
            $0.top.equalTo(placePickerView.snp.bottom).offset(398)
        }

    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return placelist.place.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return placelist.place[row].name
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        placePickerView.selectRow(0, inComponent: 1, animated: false)

        //let cityIdx = placePickerView.selectedRow(inComponent: 0)
        //let selectedCity = placelist.place[cityIdx].name

        placePickerView.reloadComponent(1)
    }

}

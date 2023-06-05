//
//  FacilityView.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/02.
//

import UIKit

class FindPolicyView: UIView {
    // MARK: - properties
    let policyContentButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = "맞춤 정책"
        config.image = UIImage(named: "policy")
        config.imagePlacement = .top
        var button = UIButton(configuration: config)
        //button.addTarget(nil, action: #selector(tapCellType), for: .touchUpInside)
        let handler: UIButton.ConfigurationUpdateHandler = { button in
            switch button.state {
            case [.selected, .highlighted]:
                button.configuration?.title = "맞춤 정책"
            case .selected:
                button.configuration?.title = "맞춤 정책"
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 12.0, weight: .bold)
            case .highlighted:
                button.configuration?.title = "맞춤 정책"
                button.layer.cornerRadius = 8
                button.backgroundColor = UIColor(hex: "#F4CAB8")
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 12.0, weight: .bold)
            case .disabled:
                button.configuration?.title = "맞춤 정책"
            default:
                button.configuration?.title = "맞춤 정책"
                button.backgroundColor = .white
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 12.0, weight: .bold)
                button.configuration?.attributedTitle?.foregroundColor = .black
            }
        }
        button.configurationUpdateHandler = handler
        return button
    }()

    // MARK: - inits

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
        [policyContentButton].forEach { addSubview($0) }
        policyContentButton.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

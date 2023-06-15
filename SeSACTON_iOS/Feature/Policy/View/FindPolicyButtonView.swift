//
//  FindPolicyButtonView.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/13.
//

import UIKit

protocol FindPolicyButtonViewDelegate: AnyObject {
    func findPolicyButtonTapped()
}

class FindPolicyButtonView: UIView {
    weak var delegate: FindPolicyButtonViewDelegate?

    let policyContentButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = "맞춤 정책"
        config.image = UIImage(named: "policy")
        config.imagePlacement = .top
        var button = UIButton(configuration: config)

        let handler: UIButton.ConfigurationUpdateHandler = { button in
            switch button.state {
            case [.selected, .highlighted]:
                button.configuration?.title = "맞춤 정책"
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

    private func setupButton() {
        policyContentButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    @objc private func buttonTapped() {
        delegate?.findPolicyButtonTapped()
    }

    private func setupViews() {
        addSubview(policyContentButton)
        policyContentButton.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        setupButton()
    }
}

extension FindPolicyButtonView: FindPolicyButtonViewDelegate {
    func findPolicyButtonTapped() {
        delegate?.findPolicyButtonTapped()
    }
}

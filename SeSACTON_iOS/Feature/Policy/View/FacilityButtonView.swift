//
//  FacilityButtonView.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/13.
//

import UIKit

protocol FacilityButtonViewDelegate: AnyObject {
    func facilityButtonTapped()
}

class FacilityButtonView: UIView {
    weak var delegate: FacilityButtonViewDelegate?

    var facilityBoxButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = "주변 시설"
        config.image = UIImage(named: "facility")
        config.imagePlacement = .top
        config.imagePadding = 3
        var button = UIButton(configuration: config)

        let handler: UIButton.ConfigurationUpdateHandler = { button in
            switch button.state {
            case [.selected, .highlighted]:
                button.configuration?.title = "주변 시설"
            case .selected:
                button.configuration?.title = "주변 시설"
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 12.0, weight: .bold)
            case .highlighted:
                button.configuration?.title = "주변 시설"
                button.layer.cornerRadius = 8
                button.backgroundColor = UIColor(hex: "#F4CAB8")
                button.configuration?.attributedTitle?.foregroundColor = .black
                button.configuration?.attributedTitle?.font = .systemFont(ofSize: 12.0, weight: .bold)
            case .disabled:
                button.configuration?.title = "주변 시설"
            default:
                button.configuration?.title = "주변 시설"
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
        facilityBoxButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    @objc private func buttonTapped() {
        delegate?.facilityButtonTapped()
    }

    private func setupViews() {
        addSubview(facilityBoxButton)
        facilityBoxButton.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        setupButton()
    }
}
extension FacilityButtonView: FacilityButtonViewDelegate {
    func facilityButtonTapped() {
        delegate?.facilityButtonTapped()
    }
}

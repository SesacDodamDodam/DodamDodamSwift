//
//  FacilityView.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/02.
//

import UIKit

class FacilityView: UIView {
    // MARK: - properties

    var facilityBoxButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = "주변 시설"
        config.image = UIImage(named: "facility")
        config.imagePlacement = .top
        config.imagePadding = 3
        var button = UIButton(configuration: config)
        button.addTarget(nil, action: #selector(tapCellType), for: .touchUpInside)

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

    // MARK: - inits

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
extension FacilityView {
    func setupViews() {
        [facilityBoxButton].forEach { addSubview($0) }
        facilityBoxButton.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

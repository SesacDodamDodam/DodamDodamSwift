//
//  PolicyCell.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/05/30.
//

import UIKit

class PolicyCell: UIView {
    var cellData: PolicyData

    // MARK: - properties

    private lazy var cellStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 5.0
        let PolicyNameView = PolicyCellName(frame: .zero, type: cellData.cellType)

        [PolicyNameView].forEach { stackView.addArrangedSubview($0) }

        return stackView
    }()

    init(frame: CGRect, data: PolicyData) {
        self.cellData = data
        super.init(frame: frame)
        setupViews()
        self.layer.cornerRadius = 20
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(hex: "#EDEDED").cgColor
        self.backgroundColor = .white
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PolicyCell {
    func setupViews() {
        addSubview(cellStackView)
        cellStackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

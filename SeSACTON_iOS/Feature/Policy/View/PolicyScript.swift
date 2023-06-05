//
//  PolicyCellName.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/05.
//

import UIKit

import SnapKit

class PolicyScript: UIView {
    var labelType: String

    // MARK: - properties

    private lazy var cellNamebutton: UIButton = {
        $0.addTarget(nil, action: #selector(tapCellType), for: .touchUpInside)
        return $0
    }(UIButton())
    private lazy var cellNameLabel: UILabel = {
        $0.text = labelType
        $0.font = .systemFont(ofSize: 14.0, weight: .regular)
        return $0
    }(UILabel())

    // MARK: - init

    init(frame: CGRect, type: String) {
        self.labelType = type
        super.init(frame: frame)
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

extension PolicyScript {
    func setupViews() {
        [cellNamebutton, cellNameLabel].forEach { addSubview($0) }
        cellNamebutton.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        cellNameLabel.snp.makeConstraints {
            $0.top.left.right.bottom.equalToSuperview().inset(24.0)
        }
    }
}

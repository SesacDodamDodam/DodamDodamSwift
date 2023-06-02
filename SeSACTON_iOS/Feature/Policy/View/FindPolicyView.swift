//
//  FacilityView.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/02.
//

import UIKit

class FindPolicyView: UIView {
    // MARK: - properties

    var policyBoxView = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(hex: "#CAACA3").cgColor
        self.backgroundColor = .white
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

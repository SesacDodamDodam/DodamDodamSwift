//
//  ImageLiterals.swift
//  SeSACTON_iOS
//
//  Created by 홍준혁 on 2023/05/28.
//

import UIKit

enum ImageLiterals {
    static var mainIcon: UIImage { .load(name: "mainIcon") }
    static var mainTopDesign: UIImage { .load(name: "mainTopDesign") }
    static var video1: UIImage { .load(name: "video1") }
    static var video2: UIImage { .load(name: "video2") }
    static var video3: UIImage { .load(name: "video3") }
    static var video4: UIImage { .load(name: "video4") }
    static var moveToNextViewButton: UIImage { .load(name: "moveToNextViewButton") }
    static var pickView: UIImage { .load(name: "pickView") }
    static var playIcon: UIImage { .load(name: "playIcon") }
    static var momTopImage: UIImage { .load(name: "momTopImage") }
    static var downIcon: UIImage { .load(name: "downIcon") }
    static var mom2content: UIImage { .load(name: "mom2content") }
    static var mom3content: UIImage { .load(name: "mom3content") }
    static var leftButton: UIImage { .load(name: "leftButton") }
    static var webViewImage: UIImage { .load(name: "webViewImage") }
    static var webViewText: UIImage { .load(name: "webViewText") }
}

extension UIImage {
    static func load(name: String) -> UIImage {
        guard let image = UIImage(named: name, in: nil, compatibleWith: nil) else {
            return UIImage()
        }
        image.accessibilityIdentifier = name
        return image
    }
    
    static func load(systemName: String) -> UIImage {
        guard let image = UIImage(systemName: systemName, compatibleWith: nil) else {
            return UIImage()
        }
        image.accessibilityIdentifier = systemName
        return image
    }
}

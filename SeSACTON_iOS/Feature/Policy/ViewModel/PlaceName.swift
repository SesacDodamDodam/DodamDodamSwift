//
//  PlaceName.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/06/15.
//

import Foundation

struct PlaceName {
    let place = [
        Place(name: "서울"),
        Place(name: "강서구"),
        Place(name: "동작구"),
        Place(name: "성동구"),
        Place(name: "은평구"),
        Place(name: "중남구")
    ]
}

struct Place {
    let name: String
}

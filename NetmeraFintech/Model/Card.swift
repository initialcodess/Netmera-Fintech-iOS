//
//  Card.swift
//  NetmeraFintech
//
//  Created by InitialCode on 14.07.2023.
//

import Foundation

struct Card {
    var cardId: Int
    var lastFourDigits: String
    var imageName: String

    init(cardId: Int = 0, lastFourDigits: String, imageName: String) {
        self.cardId = cardId
        self.lastFourDigits = lastFourDigits
        self.imageName = imageName
    }
}

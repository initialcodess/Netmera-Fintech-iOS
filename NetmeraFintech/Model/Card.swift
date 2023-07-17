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

    init(cardId: Int = 0, lastFourDigits: String) {
        self.cardId = cardId
        self.lastFourDigits = lastFourDigits
    }
}

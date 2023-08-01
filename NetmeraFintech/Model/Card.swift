//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import Foundation

struct Card {
    var cardId: Int
    var lastFourDigits: String
    var imageName: String

    init(cardId: Int, lastFourDigits: String, imageName: String) {
        self.cardId = cardId
        self.lastFourDigits = lastFourDigits
        self.imageName = imageName
    }
}

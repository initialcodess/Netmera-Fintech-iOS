//
//  FreezeCardEvent.swift
//  NetmeraFintech
//
//  Created by InitialCode on 14.07.2023.
//

import NetmeraCore

class FreezeCardEvent: NetmeraEvent {
    override static var key: String {
        return "zxwqx"
    }
    
    var cardID: String?
    
    required init(cardID: String? = nil) {
        super.init()
        self.cardID = cardID
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cardID = try container.decodeIfPresent(String.self, forKey: .cardID)
        try super.init(from: decoder)
    }
    
    override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cardID, forKey: .cardID)
    }
    
    enum CodingKeys: String, CodingKey {
        case cardID = "ea"
    }
}

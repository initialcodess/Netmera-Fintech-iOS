//
//  PurchaseEvent.swift
//  NetmeraFintech
//
//  Copyright (c) 2023 Netmera.
//  @author Initial Code on 14.07.2023.
//

import NetmeraCore

class PurchaseEvent: NetmeraEvent {
    override static var key: String {
        return "lephe"
    }

    var amount: String?
    var message: String?

    required init(amount: String? = nil, message: String? = nil) {
        super.init()
        self.amount = amount
        self.message = message
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        amount = try container.decodeIfPresent(String.self, forKey: .amount)
        message = try container.decodeIfPresent(String.self, forKey: .message)
        try super.init(from: decoder)
    }

    override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(amount, forKey: .amount)
        try container.encode(message, forKey: .message)
    }

    enum CodingKeys: String, CodingKey {
        case amount = "ea"
        case message = "eb"
    }
}

//
//  PaymentTransferEvent.swift
//  NetmeraFintech
//
//  Copyright (c) 2023 Netmera.
//  @author Initial Code on 14.07.2023.
//

import NetmeraCore

class PaymentTransferEvent: NetmeraEvent {
    override static var key: String {
        return "wwsvp"
    }

    var who: String?

    required init(who: String? = nil) {
        super.init()
        self.who = who
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        who = try container.decodeIfPresent(String.self, forKey: .who)
        try super.init(from: decoder)
    }

    override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(who, forKey: .who)
    }

    enum CodingKeys: String, CodingKey {
        case who = "ea"
    }
}

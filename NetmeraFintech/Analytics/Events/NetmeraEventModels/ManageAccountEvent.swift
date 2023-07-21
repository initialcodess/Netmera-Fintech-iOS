//
//  ManageAccountEvent.swift
//  NetmeraFintech
//
//  Copyright (c) 2023 Netmera.
//  @author Initial Code on 14.07.2023.
//

import NetmeraCore

class ManageAccountEvent: NetmeraEvent {
    override static var key: String {
        return "xmiwr"
    }

    var account: String?

    required init(account: String? = nil) {
        super.init()
        self.account = account
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        account = try container.decodeIfPresent(String.self, forKey: .account)
        try super.init(from: decoder)
    }

    override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(account, forKey: .account)
    }

    enum CodingKeys: String, CodingKey {
        case account = "ea"
    }
}

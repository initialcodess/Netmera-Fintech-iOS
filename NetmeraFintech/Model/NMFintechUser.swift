//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import NetmeraCore

class NMImpactFintechUser: NetmeraUser {
    var type: String? = nil

    required init(type: String? = nil) {
        super.init()
        self.type = type
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        type = try container.decodeIfPresent(String.self, forKey: .type)
        try super.init(from: decoder)
    }

    override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
    }

    enum CodingKeys: String, CodingKey {
        case type = "bk"
    }
}

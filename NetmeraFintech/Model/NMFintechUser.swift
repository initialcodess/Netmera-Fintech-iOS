//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import NetmeraCore

class NMImpactFintechUser: NetmeraUser {
    var companyName: String?
    var companyEmail: String?
    var title: String?

    override init() {
        super.init()
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        companyEmail = try container.decodeIfPresent(String.self, forKey: .companyName)
        title = try container.decodeIfPresent(String.self, forKey: .companyName)
        try super.init(from: decoder)
    }

    override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(companyName, forKey: .companyName)
        try container.encode(companyEmail, forKey: .companyEmail)
        try container.encode(title, forKey: .title)
    }

    enum CodingKeys: String, CodingKey {
        case companyName = "ca"
        case companyEmail = "or"
        case title = "xi"
    }
}

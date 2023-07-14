//
//  PaymentDetailEvent.swift
//  NetmeraFintech
//
//  Created by InitialCode on 14.07.2023.
//

import NetmeraCore

class PaymentDetailEvent: NetmeraEvent {
    override static var key: String {
        return "ctxsb"
    }
    
    var transactionId: Int?
    
    required init(transactionId: Int? = nil) {
        super.init()
        self.transactionId = transactionId
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.transactionId = try container.decodeIfPresent(Int.self, forKey: .transactionId)
        try super.init(from: decoder)
    }
    
    override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(transactionId, forKey: .transactionId)
    }
    
    enum CodingKeys: String, CodingKey {
        case transactionId = "ec"
    }
}

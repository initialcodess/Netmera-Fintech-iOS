//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

struct Transaction {
    let category: String
    let imageName: String
    let iconContainerColor: UIColor
    let name: String
    let numberOfPayments: String
    let price: String
    let priceColor: UIColor
    let totalAmount: String
    let transactionId: Int
    let transactionNumber: String
    let type: TransactionType
}

enum TransactionType {
    case expense
    case income

    var description: String {
        switch self {
        case .expense: return "Expense"
        case .income: return "Income"
        }
    }
}

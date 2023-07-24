//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

struct Transaction {
    let imageName: String!
    let title: String!
    let type: TransactionType!
    let amount: Double!
    let color: UIColor!
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

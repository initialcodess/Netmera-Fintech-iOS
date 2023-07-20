//
//  Transaction.swift
//  NetmeraFintech
//
//  Created by InitialCode on 19.07.2023.
//

import Foundation

class Transaction {
    let imageName: String!
    let title: String!
    let type: TransactionType!
    let amount: Double!

    init(imageName: String!, title: String!, type: TransactionType!, amount: Double!) {
        self.imageName = imageName
        self.title = title
        self.type = type
        self.amount = amount
    }
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

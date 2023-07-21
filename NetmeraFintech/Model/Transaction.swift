//
//  Transaction.swift
//  NetmeraFintech
//
//  Copyright (c) 2023 Netmera.
//  @author Initial Code on 19.07.2023.
//

import UIKit

class Transaction {
    let imageName: String!
    let title: String!
    let type: TransactionType!
    let amount: Double!
    let color: UIColor!

    init(imageName: String!, title: String!, type: TransactionType!, amount: Double!, color: UIColor!) {
        self.imageName = imageName
        self.title = title
        self.type = type
        self.amount = amount
        self.color = color
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

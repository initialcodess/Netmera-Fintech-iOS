//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class DataRepository {
    public static func getTransactions() -> [Transaction] {
        return [
            Transaction(category: "Entertainment",
                        imageName: "Shopping",
                        iconContainerColor: Color.blue,
                        name: "Impact Music App Premium",
                        numberOfPayments: "3",
                        price: "$9.99",
                        priceColor: UIColor.black,
                        totalAmount: "$19.98",
                        transactionId: 0,
                        transactionNumber: "1",
                        type: TransactionType.expense),
            Transaction(category: "Income",
                        imageName: "Dollar",
                        iconContainerColor: Color.green,
                        name: "Salary",
                        numberOfPayments: "1",
                        price: "+$4,900.00",
                        priceColor: Color.green,
                        totalAmount: "+$4,900.00",
                        transactionId: 1,
                        transactionNumber: "2",
                        type: TransactionType.income),
            Transaction(category: "Bill",
                        imageName: "Bulb",
                        iconContainerColor: Color.orange,
                        name: "Electricity",
                        numberOfPayments: "3",
                        price: "$49.99",
                        priceColor: UIColor.black,
                        totalAmount: "$102.21",
                        transactionId: 2,
                        transactionNumber: "3",
                        type: TransactionType.expense),
        ]
    }

    public static func getCards() -> [Card] {
        return [
            Card(cardId: 1, lastFourDigits: "2183", imageName: "Card_1"),
            Card(cardId: 2, lastFourDigits: "5569", imageName: "Card_2"),
            Card(cardId: 3, lastFourDigits: "8530", imageName: "Card_3"),
        ]
    }

    public static func getContacts() -> [Contact] {
        return [
            Contact(id: 1, name: "Alfredo Johnson", lastName: "", lastFourDigit: "", image: Color.purple.createImage()),
            Contact(id: 2, name: "Charlie Smith", lastName: "", lastFourDigit: "", image: Color.orange.createImage()),
        ]
    }

    public static func getPayContacts() -> [Contact] {
        return [
            Contact(id: 1, name: "Sam", lastName: "Paul", lastFourDigit: "9373", image: UIImage(named: "Avatar")),
            Contact(id: 2, name: "Sarah", lastName: "Jones", lastFourDigit: "4163", image: UIImage(named: "Avatar_1")),
            Contact(id: 3, name: "Adam", lastName: "Henrique", lastFourDigit: "0956", image: UIImage(named: "Avatar_2")),
            Contact(id: 4, name: "Cynthia", lastName: "Clyburn", lastFourDigit: "4592", image: UIImage(named: "Avatar_3")),
            Contact(id: 5, name: "Daniel", lastName: "James", lastFourDigit: "9932", image: nil),
        ]
    }
}

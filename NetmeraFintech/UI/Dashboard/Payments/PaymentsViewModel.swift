//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class PaymentsViewModel {
    let payContacts = [
        Contact(id: 1, name: "Sam", image: UIImage(named: "Avatar")),
        Contact(id: 2, name: "Sarah", image: UIImage(named: "Avatar_1")),
        Contact(id: 3, name: "Adam", image: UIImage(named: "Avatar_2")),
        Contact(id: 4, name: "Cynthia", image: UIImage(named: "Avatar_3")),
        Contact(id: 5, name: "Daniel", image: nil),
    ]

    let contacts = [
        Contact(id: 1, name: "Alfredo Johnson", image: Color.purple.createImage()),
        Contact(id: 2, name: "Charlie Smith", image: Color.orange.createImage()),
    ]
}

//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Dmitrii Melnikov on 05.05.2023.
//

import SwiftUI

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var rows: [String] {
        [phone, email]
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        let names = PersonsData.shared.names.shuffled()
        let surnames = PersonsData.shared.surnames.shuffled()
        let phones = PersonsData.shared.phones.shuffled()
        let emails = PersonsData.shared.emails.shuffled()
        
        var personList: [Person] = []
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            personList.append(
                Person(
                    id: index + 1,
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index]
                )
            )
        }
        return personList
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}


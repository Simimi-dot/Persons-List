//
//  PersonModel.swift
//  Persons List
//
//  Created by Егор Астахов on 29.10.2021.
//

import Foundation


struct Person {
    var firstName: String
    var lastName: String
    var email: String
    var phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    static func getContactsList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManagerClass.shared.firstNames.shuffled()
        let lastNames = DataManagerClass.shared.lastNames.shuffled()
        let emails = DataManagerClass.shared.emails.shuffled()
        let phones = DataManagerClass.shared.phoneNumbers.shuffled()
        
        for index in 0..<names.count {
            let person = Person(firstName: names[index], lastName: lastNames[index], email: emails[index], phoneNumber: phones[index])
            persons.append(person)
        }
        return persons
    }
}




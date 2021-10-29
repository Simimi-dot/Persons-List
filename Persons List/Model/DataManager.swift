//
//  DataManager.swift
//  Persons List
//
//  Created by Егор Астахов on 29.10.2021.
//

import Foundation

class DataManagerClass {
    
    static let shared = DataManagerClass()
    
    private init() {}
    
    var firstNames: [String] = [
        "Bruce",
        "John",
        "Steven",
        "Aaron",
        "Tim",
        "Allan",
        "Sharon",
        "Ted",
        "Carl",
        "Nicola",
    ]
    
    var lastNames: [String] = [
        "Butler",
        "Smith",
        "Black",
        "Robertson",
        "Murphy",
        "Williams",
        "Isaacson",
        "Jankin",
        "Pennyword",
        "Dow",
    ]
    
    var emails: [String] = [
        "aaa@mail.ru",
        "bbb@mail.ru",
        "ccc@mail.ru",
        "ddd@mail.ru",
        "eee@mail.ru",
        "fff@mail.ru",
        "ggg@mail.ru",
        "hhh@mail.ru",
        "iii@mail.ru",
        "jjj@mail.ru"
    ]
    
    var phoneNumbers: [String] = [
        "+71112223344",
        "+72223334455",
        "+73334445566",
        "+74445556677",
        "+75556667788",
        "+76667778899",
        "+77778889900",
        "+78889990011",
        "+79990001122",
        "+70001112233",
    ]
    
}

//
//  Person.swift
//  ContactList
//
//  Created by Наталья Мирная on 15.04.2020.
//  Copyright © 2020 Наталья Мирная. All rights reserved.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

class PersonBuilder {
    static let name = ["Ron", "Alice", "Bob", "Michael"].shuffled()
    static let surname = ["Schmidt", "Brown", "Green", "Fox"].shuffled()
    static let email = ["tyu@mail.ru", "prettyface@gmail.com", "1980@bing.com", "bigboss@yahoo.com"].shuffled()
    static let phone = ["345677", "294033", "136482", "375859"].shuffled()
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        for index in 0..<name.count {
            let person = Person(name: name[index],
                                surname: surname[index],
                                email: email[index],
                                phone: phone[index])
            persons.append(person)
        }
        return persons
    }
}


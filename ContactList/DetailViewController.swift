//
//  ViewController.swift
//  ContactList
//
//  Created by Наталья Мирная on 15.04.2020.
//  Copyright © 2020 Наталья Мирная. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var personFullName: UILabel!
    @IBOutlet weak var personEmail: UILabel!
    @IBOutlet weak var personPhone: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personFullName.text = person.fullname
        personEmail.text = person.email
        personPhone.text = person.phone

    }
}


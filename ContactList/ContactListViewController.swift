//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Наталья Мирная on 16.04.2020.
//  Copyright © 2020 Наталья Мирная. All rights reserved.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var fullPerson: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullPerson = PersonBuilder.getPersons()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        fullPerson.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        fullPerson[section].fullname
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullCell", for: indexPath)
        let person = fullPerson[indexPath.section]
        
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phone
        
        return cell
    }
}

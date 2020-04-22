//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Наталья Мирная on 16.04.2020.
//  Copyright © 2020 Наталья Мирная. All rights reserved.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var personsList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationAppearance()
        personsList = PersonBuilder.getPersons()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        cell.textLabel?.text = personsList[indexPath.row].fullname
        cell.textLabel?.textAlignment = NSTextAlignment(.left)
        cell.textLabel?.textColor = UIColor.systemIndigo
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        return cell
    }
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personsList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let detailVC = segue.destination as! DetailViewController
            detailVC.person = sender as? Person
        }
    }
    
    private func setupNavigationAppearance() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = .black
    }
}



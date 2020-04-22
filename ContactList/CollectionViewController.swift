//
//  CollectionViewController.swift
//  ContactList
//
//  Created by Наталья Мирная on 21.04.2020.
//  Copyright © 2020 Наталья Мирная. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var collectionPersons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionPersons = PersonBuilder.getPersons()
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionPersons.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionCell
        cell.fullnameCollLabel.text = collectionPersons[indexPath.row].fullname
        cell.emailCollLabel.text = collectionPersons[indexPath.row].email
        cell.phoneCollLabel.text = collectionPersons[indexPath.row].phone
        cell.layer.borderColor = CGColor(srgbRed: 135/255, green: 135/255, blue: 255/255, alpha: 1)
        cell.layer.borderWidth = 2
            
        return cell
    }
}

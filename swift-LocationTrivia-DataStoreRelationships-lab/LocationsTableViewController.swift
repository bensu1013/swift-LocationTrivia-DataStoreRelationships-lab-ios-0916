//
//  LocationsTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Benjamin Su on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class LocationsTableViewController: UITableViewController {
    
    var store: LocationsDataStore = LocationsDataStore.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.accessibilityLabel = "Locations Table"
        tableView.accessibilityIdentifier = "Locations Table"
        
        self.navigationItem.rightBarButtonItem?.accessibilityLabel = "addButton"
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "addButton"
 
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
     
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return store.locations.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        print("happy")
        
        cell.textLabel?.text = store.locations[indexPath.row].name
        cell.detailTextLabel?.text = "Trivia: \(store.locations[indexPath.row].trivia.count)"
     
        print(cell.textLabel?.text)
        print(cell.detailTextLabel?.text)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "triviaSegue" {
            if let dest = segue.destination as? TriviaTableViewController,
                let index = tableView.indexPathForSelectedRow {
                dest.location = store.locations[index.row]
            }
        }
        if segue.identifier == "addSegue" {
            if let dest = segue.destination as? AddLocationViewController {
                print(store.locations.count)
                dest.locationsTableView = tableView
            }
        }
    }
    
    

}







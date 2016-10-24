//
//  TriviaTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Benjamin Su on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TriviaTableViewController: UITableViewController {

    var location: Location!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.accessibilityLabel = "Trivia Table"
        tableView.accessibilityIdentifier = "Trivia Table"
        
        self.navigationItem.rightBarButtonItem?.accessibilityLabel = "Add Trivia Button"
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "Add Trivia Button"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return location.trivia.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
        cell.textLabel?.text = location.trivia[indexPath.row].content
        cell.detailTextLabel?.text = "Likes: \(location.trivia[indexPath.row].likes)"
        
        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let dest = segue.destination as? AddTriviaViewController {
            
            dest.location = self.location
            
        }
        
        
        
        
    }
    
}


















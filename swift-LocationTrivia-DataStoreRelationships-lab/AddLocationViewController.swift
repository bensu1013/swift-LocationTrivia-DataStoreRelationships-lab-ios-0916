//
//  AddLocationViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Benjamin Su on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var latitudeField: UITextField!
    
    @IBOutlet weak var longitudeField: UITextField!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var saveButton: UIButton!
    
    var locationsTableView: UITableView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.accessibilityLabel = "nameField"
        nameTextField.accessibilityIdentifier = "nameField"
        
        latitudeField.accessibilityLabel = "latitudeField"
        latitudeField.accessibilityIdentifier = "latitudeField"
        
        longitudeField.accessibilityLabel = "longitudeField"
        longitudeField.accessibilityIdentifier = "longitudeField"

    }

    @IBAction func cancelButtonAction(_ sender: AnyObject) {
        
        self.dismiss(animated: true, completion: nil)
        
    }

    @IBAction func saveButtonAction(_ sender: AnyObject) {
        
        guard let latitude = Float(latitudeField.text!) else { return }
        guard let longitude = Float(longitudeField.text!) else { return }
       
        LocationsDataStore.sharedInstance.locations.append(Location(name: nameTextField.text!, latitude: latitude, longitude: longitude))
    
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
}














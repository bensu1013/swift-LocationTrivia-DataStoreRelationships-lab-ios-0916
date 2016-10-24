//
//  AddTriviaViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Benjamin Su on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddTriviaViewController: UIViewController {

    
    @IBOutlet weak var triviumTextField: UITextField!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var saveButton: UIButton!
    
    var location: Location?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        triviumTextField.accessibilityLabel = "Trivium Text Field"
        triviumTextField.accessibilityIdentifier = "Trivium Text Field"
        
        cancelButton.accessibilityLabel = "Cancel Button"
        cancelButton.accessibilityIdentifier = "Cancel Button"
        
        saveButton.accessibilityLabel = "Save Button"
        saveButton.accessibilityIdentifier = "Save Button"
        
        
        
    }

  
    
    @IBAction func cancelButtonAction(_ sender: AnyObject) {
    
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func saveButtonAction(_ sender: AnyObject) {
        
        location?.trivia.append(Trivium(content: triviumTextField.text!, likes: 0))
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
}







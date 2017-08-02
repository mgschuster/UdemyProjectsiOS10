//
//  ViewController.swift
//  MVCTest
//
//  Created by Admin on 7/27/17.
//  Copyright © 2017 TJSchoost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var renameField: UITextField!
    
    var person = Person(firstName: "John", lastName: "Hancock")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person = Person(firstName: "John", lastName: "Hancock")
        
        fullName.text = person.fullName

    }

    
    @IBAction func renamePressed(_ sender: Any) {
        if let txt = renameField.text {
            person.firstName = txt
            fullName.text = person.fullName
        }
    }


}


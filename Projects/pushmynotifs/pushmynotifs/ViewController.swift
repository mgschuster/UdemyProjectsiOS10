//
//  ViewController.swift
//  pushmynotifs
//
//  Created by Admin on 8/11/17.
//  Copyright © 2017 TJSchoost. All rights reserved.
//

import UIKit
import Firebase
import FirebaseInstanceID
import FirebaseMessaging

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Messaging.messaging().subscribe(toTopic: "/topics/news")
        
    }

}


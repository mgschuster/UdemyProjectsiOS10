//
//  Person.swift
//  MVCTest
//
//  Created by Admin on 7/27/17.
//  Copyright © 2017 TJSchoost. All rights reserved.
//

import Foundation

class Person {
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String {
        get {
            return _firstName
        } set {
            _firstName = newValue
        }
    }
    
    
    var lastName: String {
        return _lastName
    }
    
    init(firstName: String, lastName: String) {
        self._firstName = firstName
        self._lastName = lastName
    }
    
    var fullName: String {
        return "\(_firstName!) \(_lastName!)"
    }
}

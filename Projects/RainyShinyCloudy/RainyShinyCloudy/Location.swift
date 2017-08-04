//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Admin on 8/4/17.
//  Copyright © 2017 TJSchoost. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}

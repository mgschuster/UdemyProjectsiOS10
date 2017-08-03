//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Admin on 8/3/17.
//  Copyright © 2017 TJSchoost. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "26872444cccb1ea9c0ccb7f4fc3da63e"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"

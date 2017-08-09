import UIKit

protocol Vehicle {
    var isRunning: Bool { get set }
    var make: String { get set }
    var model: String { get set }
    mutating func start()
    mutating func turnOff()
}

extension Vehicle {
    
    var makeModel: String {
        return "\(make) \(model)"
    }
    
    mutating func start() {
        if isRunning {
            print("Already started")
        } else {
            isRunning = true
            print("It's fired up")
        }
    }
    
    mutating func turnOff() {
        if !isRunning {
            print("It's shut down!")
        } else {
            print("It's already dead")
        }
    }
}

struct SportsCar: Vehicle {
    var isRunning: Bool = false
    var make: String
    var model: String
    
    var description: String {
        return self.makeModel
    }
    
}

class SemiTruck: Vehicle {
    var isRunning: Bool = false
    var make: String
    var model: String
    
    init(isRunning: Bool, make: String, model: String) {
        self.isRunning = isRunning
        self.make = make
        self.model = model
    }
    
    var description: String {
        return self.makeModel
    }
    
    func blowAirHorn() {
        print("TOOOOOT :)")
    }
}

var car1 = SportsCar(isRunning: false, make: "Porsche", model: "911")
var truck1 = SemiTruck(isRunning: false, make: "Peterbuilt", model: "Verago")

var vehicleArray: Array<Vehicle> = [car1, truck1]
for vehicle in vehicleArray {
    print("\(vehicle.makeModel)")
}

extension Double {
    var dollarString: String {
        return String(format: "$%.02f", self)
    }
}

var pct = 32.15 * 0.15
pct.dollarString

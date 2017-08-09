import UIKit

func intAdder(number: Int) -> Int {
    return number + 1
}

intAdder(number: 15)

func doubleAdder(number: Double) -> Double {
    return number + 1.0
}

doubleAdder(number: 15.0)

func genericAdder<T: Strideable>(number: T) -> T {
    return number + 1
}

genericAdder(number: 15)
genericAdder(number: 15.0)

protocol Numeric {
    static func *(lhs: Self, rhs: Self) -> Self
}

extension Double: Numeric {}
extension Float: Numeric {}
extension Int: Numeric {}

func genericMultiplier<T: Numeric>(lhs: T, rhs: T) -> T {
    return lhs * rhs
}

genericMultiplier(lhs: 5, rhs: 5)
genericMultiplier(lhs: 3.14, rhs: 5)
//: Playground - noun: a place where people can play

import UIKit

//Factorial of non negative integer

func factorialFirst(num: Int) -> Int {
    var factorial = 0
    for x in 1...num {
        if factorial != 0 {
            factorial = factorial * x
        } else {
            factorial = 1
        }
    }
    return factorial
}

factorialFirst(num: 7)

func factorial(num: Int) -> Int {
    if num == 1 {
        return 1
    } else {
        return num * factorialFirst(num: num - 1)
    }
}
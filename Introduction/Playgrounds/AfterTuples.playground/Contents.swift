//: Playground - noun: a place where people can play

import UIKit

//: comparison
var firstNum = 2
var secondNum = firstNum

secondNum == firstNum

class someClass{
    var opereator : String?
}

var a = someClass()
var b = a
b.opereator = "+"
a.opereator
b === a

//: Ternary conditional operators
var thirdNum = firstNum < secondNum ? firstNum : secondNum

//: Loops
for i in 1...3 {
    print(i)
}

let numbers = [1, 2, 3]
for i in numbers {
    print(i)
}

repeat{
    firstNum = 5
    firstNum -= 1
}while firstNum > 4

//: optional binding
var maybeNumber : Int? = 1
if let num = maybeNumber {
    print(num)
}else {
    maybeNumber = 11
}

//: optional chaining
class Employee {
    let name: String
    var manager: Employee? = nil
    
    init(name: String) {
        self.name = name
    }
    
    func printName() {
        print(name)
    }
}

let charlotte = Employee(name: "Charlotte")
let lori = Employee(name: "Lori")
let scott = Employee(name: "Scott")
let betty = Employee(name: "Betty")

betty.manager = scott
//scott.manager = lori
//lori.manager = charlotte

if let manager = betty.manager {
    if let manager = manager.manager {
        manager.printName()
    }
    else{
        print("nnilll")
    }
}

betty.manager?.manager?.name




//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: Struct

struct Resolution{
    var width : Int
    var length : Int
    
    func resText() -> String {
        return "\(width) * \(length)"
    }
}

var myDisplay = Resolution(width : 1920,length : 1080)
myDisplay.length

var yourDisplay = myDisplay
yourDisplay.length = 1920
yourDisplay.resText()
myDisplay.resText()

//: Enumerations
//: : An enumeration is a user-defined data type which consists of set of related values
enum Direction {
    case up
    case down
    case left , right
}
Direction.right


//associative value
enum Barcode {
    case type1(Int , Int , Int)
    case type2(String)
}

var barcode = Barcode.type1(2, 3, 5)
barcode = .type2("aaaa")

enum names {
    case Swift
    case Closures
}

var lang = names.Closures
lang = .Closures

switch lang {
case .Swift:
    print("Welcome to Swift")
case .Closures:
    print("Welcome to Closures")
default:
    print("Introduction")
}




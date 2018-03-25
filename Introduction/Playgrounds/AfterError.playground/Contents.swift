//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: Closures
//: :Closures are self-contained blocks of functionality that can be passed around and used in your code

var names = ["Sama" , "Alfredo" , "Rafael"]

let namesBeginningWithS = names.filter({ (name: String) -> Bool in
    return name.lowercased().characters.first! == "s"
})

let namesIncludingAnE = names.filter {
    $0.lowercased().characters.contains("e")
}



let randomNameGetter: String = {
    let randomIndex = Int(arc4random_uniform(UInt32(names.count)))
    return names[randomIndex]
}()
func haveStringClosure(number : Int , closure : @autoclosure () -> String ){
    closure()
}
haveStringClosure(number: 1, closure: randomNameGetter)



func haveClosure(number : Int , closure : @escaping (_ num : Int) -> Void ){
    closure(number)
}
haveClosure(number: 2) { (number : Int) -> Void in
    print(number)
}

//: Class

class Cat{
    let color : String
    let name : String
    
    init(name : String , color : String) {
        self.name = name ; self.color = color
    }
    
    convenience init(name : String ){
        self.init(name: name , color : "Black" )
    }
}

var Tom = Cat(name: "Tom")

class Lion : Cat{
    
}
var Tim = Lion(name: "Tim", color: "Yellow")


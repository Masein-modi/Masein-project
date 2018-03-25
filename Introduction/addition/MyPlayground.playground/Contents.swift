//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: Throw and Return
enum err : Error{
    case errType
}

func returnError() -> Error {
    return err.errType
}

func throwError() throws {
    throw err.errType
}

returnError()

do{
    try throwError()
}catch{
    print("error occured")
}

returnError()
/* do{
    try returnError()
}catch{
    print("error occured")
}*/

var dict = ["Alen":"Marya","key":"value"]
print(dict)
print(dict.removeValue(forKey: "key"))
print(dict)
print(dict.remove(at: dict.index(forKey: "Alen")!))

func inputCheck(_ input : Int){
    guard (input < 2) else {
        print(input,"iswrong")
        return
    }
    print(input)
}
inputCheck(3)

//: Access Control
class A{
    public var publicName = "public name" //open oublic? //module in xoced not plagound
    internal var openName = "open name"
    private var privateName = "private name"

}
extension A {
    func printNname() {
        print(openName)
           print(publicName)
    }
}

var aa = A()
aa.openName
//aa.privateName

//: Closure

let studentName  = { (_ input : Int) -> () in  print("name is nameStudent")
    print(input)
}

func addingIntegers(_ input1 : Int , _ input2 : Int, _ alef : (Int) -> ()  ) -> Int{
    alef(input1)
    return input1+input2
}
addingIntegers(1, 2 , {
    (input) -> () in
    return input
})

addingIntegers(2, 4, studentName)





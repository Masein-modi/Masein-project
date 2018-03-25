//: Strings are value types
import UIKit
import Foundation

var justDeclared : String
var string = "this is class String"
string =  string.replacingOccurrences(of: " is", with: " was")

var a = string.index(string.startIndex, offsetBy:9)

string.insert(contentsOf: "my ", at: a)
var b = string.remove(at: a)
var stringRange = string.startIndex...a
string.removeSubrange(stringRange)

string.append("appended")


//https://stackoverflow.com/questions/24092884/get-nth-character-of-a-string-in-swift-programming-language


//: Arrays

var quizScores = Array<Double>()
var scores : [Int] = []
var averageScores = [Float](repeating: 0.0, count: 5)
var animals = ["cat"  , "dog" , "rabbit"]

animals.contains("dog")
animals.remove(at: 2)
animals
animals.count
animals.removeAll()

//: Dictionary

var birthYears : [String : Int] = [:]
var raceResults = Dictionary<Int , String>()

birthYears = ["Ali": 2001]
var optionalnum : String?
optionalnum = "one"
print(optionalnum)


var index = birthYears.index(forKey: "Ali")
birthYears.remove(at: index!)    //why use ?

birthYears["Karim"] = 2000
birthYears["Mammad"] = 2000
birthYears
birthYears.removeValue(forKey: "Mammad")
birthYears

//: Sets

var teachers = Set<String>()
teachers = ["Charlotte" , "Cox", "Rodrigues", "John"]
var students : Set<String> = []
var professors : Set = ["Charlotte" , "Cox"]

let setIndex = professors.index(of: "Charlotte")
professors[setIndex!]
professors.remove(at: setIndex!)
professors

teachers.isSubset(of: professors)
professors.isSubset(of: teachers)

professors.isStrictSubset(of: professors)

teachers.subtract(professors)

print(professors)
print(teachers)
teachers.symmetricDifference(professors) //Returns a new set with the elements that are either in this set or in the given sequence, but not in both.

//: Tuples
var error501 = (501, "Not implemented")
error501.1

var error200 = (errorCode: 200, description: "OK")
error200.description
error200.1






//: Gaurd statement
var aNumber = 12
func printTheChange(){
    
    guard aNumber == 10 else {
        print("changing aNumber to 10 ...")
        aNumber = 10
        return
    }
    // ?why we use guard instead of if not
}
printTheChange()

//: Functions

func add (_ ints : Int... ) -> Int {
    return ints.reduce(0, +)
}
add(2,3,4)

var studentScore = 76.0
func increase(score: inout Double , _ howMuch : Double){
    score += howMuch
}
increase(score: &studentScore, 12.2)
studentScore

func processInput(input: String) { }
func processInput(input: Int) { }
func processInput(int: Int) { }
func processInput(input: Int) -> String {
    return "\(input)."
}

//: making operators
infix operator -- : MultiplicationPrecedence
func --(a : Int , b: Int) -> Int {
    return a * a + b
}
3 -- 4

//: Error

enum errorExample : Error{
    case type1
    case type2
}

func makingError() throws{
    throw errorExample.type1
}
func returningError() -> Error{
    return errorExample.type2
}
// diffrence throw and return

do {
    try makingError()
}catch{
    print("oh errror occured")
}


//try! makingError()



















import UIKit
//
////FUNC 1
//
//func oddOrEvenNumber (number: Int) -> String {
//    let oddOrEven = number % 2
//    if oddOrEven == 0 {
//        return("\(number) is an odd number")
//    } else {
//        return("\(number) is an even number")
//    }
//}
//print (oddOrEvenNumber(number: 32))
//print(oddOrEvenNumber(number: 31))
//
////FUNC 2
//
//func oddOrEvenNumberZero (number: Int) -> (String) {
//    let oddOrEven = number % 2
//    if number == 0 {
//        return("im not sure about 0")
//    } else if oddOrEven == 0 {
//        return("\(number) is an odd number")
//    } else {
//        return("\(number) is an even number")
//    }
//}
//
//print(oddOrEvenNumberZero(number: 0))
//print(oddOrEvenNumberZero(number: 12))
//print(oddOrEvenNumberZero(number: 31))
//
//
////FUNC 3
//
//func howOldAreYou (name: String, age: Int) -> (String) {
//    switch age {
//    case ...0:
//        return("\(name) is \(age) and \(name) not exist yet")
//    case 1...14:
//        return("\(name) is \(age) and \(name) is a child")
//    case 15...50:
//        return("\(name) is \(age) and \(name) is not a child anymore")
//    default:
//        return("\(name) very old")
//    }
//}
//
//print(howOldAreYou(name: "Savelii", age: 1))
//
//
//// FUNC 1
//
////func stepForward(_ input: Int) -> Int {
////    return input + 1
////}
////
////func stepBackward(_ input: Int) -> Int {
////    return input - 1
////}
////
////func chooseStepFunction(forward: Bool) -> (Int) -> Int {
////    return forward ? stepForward : stepBackward
////}
////
////var currentValue = 5
////let moveNearerToCurrentValue = chooseStepFunction(forward: currentValue > 0)
////
////while currentValue == 0 {
////    print("\(currentValue)")
////    currentValue = moveNearerToCurrentValue(currentValue)
////}
//
////func stepForward(_ input: Int) -> Int {
////    return input + 1
////}
////
////func stepFunction(forward: Int) -> Int {
////    return forward
////}
////
////var currentValue = 0
////let upperStep = stepForward(currentValue)
////let num = 0...23
////while currentValue != 7 {
////    print("\(currentValue)")
////    currentValue = (upperStep)
////}

// FUNC 1

//func plusOne (num: Int) -> Int{
//    for index in 0..<num {
//    print(index)
//    }
//    return num
//}
//print(plusOne(num: 9))

// FUNC 2

//let diffNames = ["Savelii", "Anastacia", "Victoria", "Pavlo", "Alina", "Volodimir"]
//
//func herHisNames(name: String, gender: Bool) {
//
//    let herHis: String
//
//    if gender {
//        herHis = "His"
//    } else {
//        herHis = "Her"
//    }
//
//    print("\(herHis) name is \(name)")

//}

//print(herHisNames(name: diffNames, gender: true)) <- ERROR

//FUNC 3

//var diffNumbers = [4123, 1234, 43, 6542, 67652, 2, 768]
//
//func numbersPosition() {
//
//    for (index, value) in diffNumbers.enumerated() {
//        print ("Is it number \(value) and it is on index \(index) in array")
//    }
//}
//
//print(numbersPosition())



func growthOfPeople(sm: [Int]) {
    for (index, value) in sm.enumerated() {
                print ("Person on place \(index) is \(value) sm tall")
    }
}

growthOfPeople(sm: [167, 180, 150, 200])

let diffNames = ["Savelii", "Anastacia", "Victoria", "Pavlo", "Alina", "Volodimir"]

diffNames.forEach { (name) in
    print("\(name) is name")
}


// FUNC 0

struct People{
    var name: String
    var tempreture: Double
}

let man1 = People(name: "Sava", tempreture: 34.6)
let man2 = People(name: "Vova", tempreture: 36.6)
let man3 = People(name: "Alina", tempreture: 37.9)
let man4 = People(name: "Ramir", tempreture: 44.0)
let man5 = People(name: "Anastasia", tempreture: 35.5)
let man6 = People(name: "Victoria", tempreture: 36.6)

let arrayOfMan = [man1, man2, man3, man4, man5, man6]

//arrayOfMan.forEach { (people:People) in
//    if people.tempreture <= 36.5 {
//        print ("\(people.name) have \(people.tempreture) temp, has a cold")
//    } else if people.tempreture == 36.6 {
//        print ("\(people.name) have \(people.tempreture) temp, has a good")
//    } else if people.tempreture >= 36.7 {
//        print ("\(people.name) have \(people.tempreture) temp, has a fever")
//    }
//}

for people in arrayOfMan{
    if people.tempreture <= 36.5 {
        print ("\(people.name) have \(people.tempreture) temp, has a cold")
    } else if people.tempreture == 36.6 {
        print ("\(people.name) have \(people.tempreture) temp, has a good")
    } else if people.tempreture >= 36.7 {
        print ("\(people.name) have \(people.tempreture) temp, has a fever")
    }
}

let diffNumbers = [123, 34, 65, 654, 23, 523451, 435234, 4352345,]


// FUNC1


func sumNumbersArray (numbers: [Int]) -> String {
    var summary = 0
    for numbers in diffNumbers {
        summary += numbers
    }
    return ("sum = \(summary)")
}

sumNumbersArray(numbers: diffNumbers)

let randomArray = [10, -10, -5, 5]

let sorry = ("sorry, its not working")



// FUNC 2


func positiveInteger (positive: [Int]) {
    for positive in randomArray {
        var summary = 0
        if positive >= 0 {
            for positive in randomArray {
                summary += positive
            print("sum = \(summary)")

            }
        } else {
            print(sorry)
        }
    }
}

positiveInteger(positive: randomArray)


// FUNC 3


func someoneInArray (name: [String]) -> [String] {
 
    name.forEach { (names) in
        print("there is \(names) in array")
    }
    return [("there is \(name) in array")]
}


someoneInArray(name: diffNames)


//FUNC 4


var diffNumbersOddEven = [4123, 1234, 43, 6542, 67652, 2, 768]

func oddOrEvenNumber (number: Int) -> String {
    let oddOrEven = number % 2
    if oddOrEven == 0 {
        return("\(number) is an odd number")
    } else {
        return("\(number) is an even number")
    }
}

func intToStringOddEvenNumber (numbers: [Int]) -> [String] {
    var arrayToString: [String] = []
 
    numbers.forEach {
        let str = oddOrEvenNumber(number: $0)
        arrayToString.append(str)
    }
    print(arrayToString)
    return arrayToString
}

intToStringOddEvenNumber(numbers: diffNumbersOddEven)

func test(){
    let tupl = [("Test1", 100)]
    print(tupl[0].1)
}

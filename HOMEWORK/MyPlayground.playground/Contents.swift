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

func plusOne (num: Int) -> Int{
    for index in 0..<num {
    print(index)
    }
    return num
}
print(plusOne(num: 9))

// FUNC 2

let diffNames = ["Savelii", "Anastacia", "Victoria", "Pavlo", "Alina", "Volodimir"]

func herHisNames(name: String, gender: Bool) {

    let herHis: String

    if gender {
        herHis = "His"
    } else {
        herHis = "Her"
    }

    print("\(herHis) name is \(name)")

}

//print(herHisNames(name: diffNames, gender: true)) <- ERROR

//FUNC 3

var diffNumbers = [4123, 1234, 43, 6542, 67652, 2, 768]

func numbersPosition() {

    for (index, value) in diffNumbers.enumerated() {
        print ("Is it number \(value) and it is on index \(index) in array")
    }
}

print(numbersPosition())

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

//print(oddOrEvenNumber(number: diffNumbersOddEven)) <- ERROR

import UIKit

//FUNC 1

func oddOrEvenNumber (number: Int) -> String {
    let oddOrEven = number % 2
    if oddOrEven == 0 {
        return("\(number) is an odd number")
    } else {
        return("\(number) is an even number")
    }
}
print (oddOrEvenNumber(number: 32))
print(oddOrEvenNumber(number: 31))

//FUNC 2

func oddOrEvenNumberZero (number: Int) -> (String) {
    let oddOrEven = number % 2
    if number == 0 {
        return("im not sure about 0")
    } else if oddOrEven == 0 {
        return("\(number) is an odd number")
    } else {
        return("\(number) is an even number")
    }
}

print(oddOrEvenNumberZero(number: 0))
print(oddOrEvenNumberZero(number: 34))
print(oddOrEvenNumberZero(number: 31))


//FUNC 3

func howOldAreYou (name: String, age: Int) -> (String) {
    switch age {
    case 0:
        return("\(name) is \(age) and \(name) not exist yet")
    case 1...14:
        return("\(name) is \(age) and \(name) is a child")
    case 15...50:
        return("\(name) is \(age) and \(name) is not a child anymore")
    default:
        return("\(name) very old")
    }
}

print(howOldAreYou(name: "Savelii", age: 0))

import UIKit

//FUNC 1

//func name(name: String){
//    if (name.count >= 1) && (name.count <= 2) {
//        print("wow, such a short name")
//    }
//    else if (name.count > 9){
//        print("wow, your name is so long")
//    }
//    else if (name.isEmpty){
//        print("name with no latters!? NO WAY!")
//    }
//    else {
//        print("Hi \(name)")
//    }
//}
//name(name: "S")
//name(name: "Quterbeyker")
//name(name: "")
//name(name: "Savelii")

//FUNC 2


//func howExpenciveIsIt (price: Int, isCar: Bool) -> String {
//
//        var bikeOrCar = String()
//
//        if isCar {
//            bikeOrCar = "is bike"
//        } else {
//            bikeOrCar = "is car"
//        }
//    let whatIsThis = "The price of this \(bikeOrCar) - \(price)."
//
//    if price <= 99 {
//        print("Error too much for anything!")
//    } else if price <= 250 {
//        print (whatIsThis)
//    } else if price <= 499 {
//        print("Its to much for a bike, but its so cheep for a car! ERORR!")
//    } else if price <= 999 {
//        print(whatIsThis)
//    } else {
//        print(whatIsThis,"ITS INCREDIBLE CAR!")
//    }
//
//    return ""
//}
//
//print(howExpenciveIsIt(price: 42, isCar:false))

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

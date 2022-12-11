import UIKit
//
//let constArray: Array<String> = ["a", "b", "c", "d"]
//
//constArray.count
//
//var array = [String]()
//
//if array.count == 0 {
//    print("array is 123 empty")
//}
//
//array += constArray
//
//array += ["e"]
//
//array.append("f")
//
//var array2 = array
//
//array
//array2
//
//array2 [0] = "1"
//
//array
//array2
//
////array [1...5] = ["0"]
//
//array
//
//array.insert("-", at: 3)
//
//array.remove(at: 2)
//
//array
//
let money = [100, 1, 1, 20, 5, 5, 50, 20 ,100]

var sum = 0

for (index, value) in money.enumerated() {
    print ("index = \(index) value = \(value)")
    sum += value
}
//sum = 0
//var index = 0
//
//for value in money {
//    print ("pindex = \(index) value = \(value)")
//    sum += value
//    index += 1
//}
//
//sum

var shoppingList = ["Milk", "Water", "Bread", "Eggs"]
    shoppingList.append("Beer")
    if shoppingList.isEmpty {
        print("Shopping list is empty")
    }
    else {
        print("Shopping list have \(shoppingList.count) elements")
}

shoppingList.append("Fish")

print(shoppingList)

shoppingList.insert("Beef", at: 0)

print(shoppingList)

let removeLast = shoppingList.removeFirst()

print(shoppingList)

for products in shoppingList {
    print(products)
}

for (index, value) in shoppingList.enumerated() {
    print ("Element \(index + 1) - \(value)")
}

//MNOZHINI

let letters = Set<Character> ()
    print("letters have type Set<Character> and mistit' \(letters.count) elements")

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(singleDigitPrimeNumbers).sorted()

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true

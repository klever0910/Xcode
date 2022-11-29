import UIKit

var str = "Hello, playground"

var myVariable = 42
myVariable = 50
let myConstant = 42

let number4: Float = 4

let label = "width = "
let width = 94
let widthLabel = label + String(width)
    print(widthLabel)

let apples = 4
let oranges = 6
let apllesSummary   = "I have \(apples) apples."
let orangesSummary  = "I have \(oranges) oranges."
let fruifsSummary   = "Alse I have \(apples + oranges) fruits."

let name = "Max"
let number = 3.5
let order = "Give me please \(number) kilo apples, because my name \(name)."

let quotation = """
I say "I have \(apples) apples."
And a few minutes later I say "I have \(apples + oranges) fruits."
"""
    print(quotation)

var shoppingList = ["chiken", "water", "flowers", "blue pen"]
shoppingList[1] = "bottle of water"
    print(shoppingList)
var occupations = [
    "Max": "Mayor",
    "Liza": "Mechanic",
]
occupations["Savelii"] = "Programmer"

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

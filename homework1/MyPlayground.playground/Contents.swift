import UIKit

//func 1

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

//func 2


func howExpenciveIsIt (price: Int, isCar: Bool) -> String {
    
        var bikeOrCar = String()
        
        if isCar {
            bikeOrCar = "is bike"
        } else {
            bikeOrCar = "is car"
        }
    let whatIsThis = "The price of this \(bikeOrCar) - \(price)."
        
    if price <= 99 {
        print("Error too much for anything!")
    } else if price <= 250 {
        print (whatIsThis)
    } else if price <= 499 {
        print("Its to much for a bike, but its so cheep for a car! ERORR!")
    } else if price <= 999 {
        print(whatIsThis)
    } else {
        print(whatIsThis,"ITS INCREDIBLE CAR!")
    }

    return ""
}

print(howExpenciveIsIt(price: 42, isCar:false))

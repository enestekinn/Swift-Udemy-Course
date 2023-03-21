import UIKit

var number = 0

//While loop

while number <= 10 {
    print(number)
    number += 1
}

var myFruitArray = ["Banana","Apple","Orange"]

for fruit in myFruitArray {
    
    print(fruit)
}

var myNumbers = [10,20,30,40,50,60]



var result = myNumbers.map( {$0 / 5})

print(result)


for myInteger in 1...5 {
    print(myInteger)
}
 

// If

var myAge = 32

if myAge < 30 {
    print(30)
}else if myAge > 30 && myAge < 40 {
    print(myAge)
}else {
    print("40 +")
}

func myFuction() {
    print("My function")
}

myFuction()


func sumFunction(x: Int, y: Int) -> Int {
 return    x+y
}

sumFunction(x: 10, y: 20)

var result2 = sumFunction(x: 10, y: 20)

print(result2)


var myName : String?

myName?.uppercased()


var myAge2 = "5a"

var myInteger = (Int(myAge2) ?? 6 )  * 5

if let myNumber3 = Int(myAge2) {
    print(myNumber3 * 9)
}

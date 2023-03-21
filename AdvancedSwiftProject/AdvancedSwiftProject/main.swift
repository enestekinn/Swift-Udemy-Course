//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by Enes Tekin on 14.03.2023.
//

import Foundation

var james = MusiciansClass(name: "James", age: 50, instrument: "Guitar")

var structJames = MusiciansStruct(name: "James", age: 50, instrument: "Guitar")

//print(james.age)
//print(structJames.age)


var copyOfJames = james
var copyOfStructJames = structJames


copyOfJames.age = 52
copyOfStructJames.age = 52


//print(james.age)
//print(structJames.age)


//function vs mutating function

//print(james.age)

james.happyBirthday()
//print(james.age)


let myTuple = (1,3)
//print(myTuple.0)



let myTuple4 = (10,[10,20,30])

//print(myTuple4.1[1])


let myNumber = "5"

func convertToIntergerGuard(stringInput: String) -> Int {
    guard let myInteger = Int(stringInput) else {
        return 0
    }
    return myInteger
}

func convertToInteger(stringInput: String) -> Int {
    if let myInteger = Int(stringInput) {
        return myInteger
    }else {
        return 0
    }
}

let myNum = 11

//remainder

let myRemainder = myNum % 2
//print(myRemainder)


var x = 5
print(x)

x += 1

print(x)

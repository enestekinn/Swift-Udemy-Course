//
//  main.swift
//  ProtocolSwiftProject
//
//  Created by Enes Tekin on 15.03.2023.
//

import Foundation

protocol Running {
 func myRun()
}


class Animal {
    func test() {
        print("test")
    }
}

class Dog: Running {
    func myRun() {
        print("Running")
    }
    
    
}

let barley = Dog()
barley.myRun()

class Cat : Animal,Running {
    func myRun() {
        print("running")
    }
    
    
}

let cat = Cat()
cat.myRun()
cat.test()

class Turtle : Running {
    func myRun() {
        
    }
    

}

let leonardo = Turtle()

struct Bird : Running {
    func myRun() {
    print("running")
    }
    
}

let tweety = Bird()
tweety.myRun()


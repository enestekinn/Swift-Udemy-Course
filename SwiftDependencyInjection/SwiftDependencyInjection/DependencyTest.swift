//
//  DependencyTest.swift
//  SwiftDependencyInjection
//
//  Created by Enes Tekin on 21.03.2023.
//

import Foundation


struct Instrument {
    var name: String
    var brand: String
}

struct Band {
    var name: String
}

struct Musician {
    var instrument: Instrument
    var name: String
    var age: Int
}

//let guitar = Instrument(name: <#T##String#>, brand: <#T##String#>)
//let metallica = Band(name: <#T##String#>)
//let james = Musician(instrument: <#T##Instrument#>, name: <#T##String#>, age: <#T##Int#>)


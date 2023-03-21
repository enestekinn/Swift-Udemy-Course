//
//  MusiciansClass.swift
//  AdvancedSwiftProject
//
//  Created by Enes Tekin on 14.03.2023.
//

import Foundation

class MusiciansClass {

    var name: String
    var age: Int
    var instrument: String
    
    
    init(name: String, age: Int, instrument: String) {
        self.name = name
        self.age = age
        self.instrument = instrument
    }
    
    func happyBirthday() {
        self.age += 1
    }
}

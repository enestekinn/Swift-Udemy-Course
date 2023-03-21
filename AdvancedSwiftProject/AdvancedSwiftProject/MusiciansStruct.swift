//
//  MusiciansStruct.swift
//  AdvancedSwiftProject
//
//  Created by Enes Tekin on 14.03.2023.
//

import Foundation

struct MusiciansStruct {
var name: String
var age: Int
var instrument: String
    
   mutating func happyBirthday() {
        self.age += 1
    }
}

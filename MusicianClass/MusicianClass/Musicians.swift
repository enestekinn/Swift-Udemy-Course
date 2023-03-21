//
//  Musicians.swift
//  MusicianClass
//
//  Created by Enes Tekin on 9.03.2023.
//

import Foundation


enum MusiciansType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Violenist
    
    
}

class Musicians {
    var  name: String
    var  age: Int
    var  insturment: String
    var type: MusiciansType
    
    init(nameInit: String, ageInit: Int, insturmentInit: String,typeInit: MusiciansType) {
        name = nameInit
        age = ageInit
        insturment = insturmentInit
        type = typeInit
    }
    
    
    func sing() {
        print("nothing else matters")
    }
}


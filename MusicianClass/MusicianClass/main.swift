//
//  main.swift
//  MusicianClass
//
//  Created by Enes Tekin on 9.03.2023.
//

import Foundation

print("Hello, World!")


var james = Musicians(nameInit: "James", ageInit: 50, insturmentInit: "giutar", typeInit: .Drummer)

james.sing()

print(james.name)


let kirk = SuperMusicians(nameInit: "kirk", ageInit: 55, insturmentInit: "Guitar", typeInit: .LeadGuitar)

kirk.sing()



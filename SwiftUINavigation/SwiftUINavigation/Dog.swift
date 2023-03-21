//
//  Dog.swift
//  SwiftUINavigation
//
//  Created by Enes Tekin on 21.03.2023.
//

import Foundation

struct Dog: Identifiable, Hashable {
    var id = UUID()
    let name: String
}

let dogs: [Dog] = [Dog(name: "Barley"),Dog(name: "Lucky"),Dog(name: "Jack")]

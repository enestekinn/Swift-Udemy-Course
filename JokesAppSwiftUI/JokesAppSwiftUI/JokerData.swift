//
//  JokerData.swift
//  JokesAppSwiftUI
//
//  Created by Enes Tekin on 21.03.2023.
//

import Foundation

struct Welcome: Identifiable,Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

struct Value: Identifiable,Codable {
    let id: Int
    let joke: String
    let categories: [String]
}

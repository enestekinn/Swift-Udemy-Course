//
//  CryptoCurrency.swift
//  CrazyCryptoSwiftUI
//
//  Created by Enes Tekin on 20.03.2023.
//

import Foundation

struct CryptoCurrency: Decodable, Identifiable {
    var id = UUID()
    let currency: String
    let price: String
    
    private enum CodingKeys: String , CodingKey {
    case currency = "currency"
        case price = "price"
    }
}

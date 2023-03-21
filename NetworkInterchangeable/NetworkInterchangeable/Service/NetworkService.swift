//
//  NetworkService.swift
//  NetworkInterchangeable
//
//  Created by Enes Tekin on 21.03.2023.
//

import Foundation

protocol NetworkService {
    func download(_ resource: String) async throws -> [User]
    var type: String { get }
}

//
//  UserSingleton.swift
//  SnapchatClone
//
//  Created by Enes Tekin on 19.03.2023.
//

import Foundation

class UserSingleton {
    
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    
    private init() {}
}

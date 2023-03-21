//
//  BackgroundProvidingClass.swift
//  SwiftDependencyInjection
//
//  Created by Enes Tekin on 21.03.2023.
//

import Foundation
import UIKit

class BackgroundProvidingClass : BackgroundProviderProtocol {
    var backgroundColor: UIColor {
        let backgroundColors: [UIColor] = [.systemGray,.systemRed,.systemMint,.systemCyan]
        return backgroundColors.randomElement()!
    }
    
    
}

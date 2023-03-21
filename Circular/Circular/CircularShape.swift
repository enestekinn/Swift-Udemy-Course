//
//  CircularShape.swift
//  Circular
//
//  Created by Enes Tekin on 21.03.2023.
//

import SwiftUI
import Foundation

struct CircularShape: Shape {
    
    var percent: Double
    var startAngel: Double
    
    typealias AnimatableData = Double
    var animatableData: Double {
        get {
        return percent
    }
    set {
        percent = newValue
    }
}
    
    init(percent: Double = 100 , startAngle: Double = -90) {
        self.percent = percent
        self.startAngel = startAngle
    }
    func path (in rect: CGRect) -> Path {
        
        let width = rect.width
        let height = rect.height
        let radius = min(width,height) / 2
        let center = CGPoint(x: width / 2, y: height / 2)
        let endAngle = ( self.percent / 100 * 360) + self.startAngel
        
        
        return Path { path in
            path.addArc(center: center, radius: radius, startAngle: Angle(degrees: startAngel), endAngle: Angle(degrees: endAngle) , clockwise: false)
        }
    }
    
    
}



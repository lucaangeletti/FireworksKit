//
//  Color.swift
//  Example
//
//  Created by Luca Angeletti on 29/07/2017.
//  Copyright © 2017 Luca Angeletti. All rights reserved.
//

import UIKit

enum Color: String {
    
    case
        red = "Red",
        green = "Green",
        blue = "Blue"
    
    var value: UIColor {
        switch self {
        case .red: return .red
        case .green: return .green
        case .blue: return .blue
        }
    }
    
    static var all: [Color] { return [.red, .green, .blue]}
}

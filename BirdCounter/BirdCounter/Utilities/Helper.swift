//
//  Helper.swift
//  BirdCounter
//
//  Created by Zvonimir Pavlović on 29/04/2020.
//  Copyright © 2020 Zvonimir Pavlović. All rights reserved.
//

import Foundation
import UIKit

struct Helper {
    
    static func colorToInt(color: UIColor) -> Int {
        switch color {
        case UIColor(red: 196/255, green: 235/255, blue: 241/255, alpha: 1):
            return 0
        case UIColor(red: 241/255, green: 206/255, blue: 136/255, alpha: 1):
            return 1
        case UIColor(red: 210/255, green: 215/255, blue: 213/255, alpha: 1):
            return 2
        case UIColor(red: 234/255, green: 228/255, blue: 190/255, alpha: 1):
            return 3
        case UIColor.white:
            return 4
        default:
            return 0
        }
    }
    
    static func intToColor(number: Int) -> UIColor {
        switch number {
        case 0:
            return UIColor(red: 196/255, green: 235/255, blue: 241/255, alpha: 1)
        case 1:
            return UIColor(red: 241/255, green: 206/255, blue: 136/255, alpha: 1)
        case 2:
            return UIColor(red: 210/255, green: 215/255, blue: 213/255, alpha: 1)
        case 3:
            return UIColor(red: 234/255, green: 228/255, blue: 190/255, alpha: 1)
        case 4:
            return UIColor.white
        default:
            return UIColor.white
        }
    }
    
}

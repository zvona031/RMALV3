//
//  SharedPreferences.swift
//  BirdCounter
//
//  Created by Zvonimir Pavlović on 29/04/2020.
//  Copyright © 2020 Zvonimir Pavlović. All rights reserved.
//

import Foundation
import UIKit

class SharedPreferences {
    
    static let shared = SharedPreferences()
    let preferences = UserDefaults.standard
    let colorKey = "colorKey"
    let counterKey  = "counterKey"
    
    func setBackgroundColor(color: UIColor){
        let colorInt = Helper.colorToInt(color: color)
        preferences.set(colorInt, forKey: colorKey)
        print("Color saved")
    }
    
    func getBackgroundColor() -> UIColor{
        if preferences.object(forKey: colorKey) == nil {
            print("Nil color founded")
            return UIColor.white
        } else {
            let colorInt = preferences.integer(forKey: colorKey)
            let color = Helper.intToColor(number: colorInt)
            print("Color returned")
            return color
        }
    }
    
    func setBirdCounter(counter: Int){
        preferences.set(counter, forKey: counterKey)
        print("Counter saved")
    }
    
    func getBirdCounter() -> Int {
        if preferences.object(forKey: counterKey) == nil {
            return 0
        } else {
            let counter = preferences.integer(forKey: counterKey)
            return counter
        }
    }
}

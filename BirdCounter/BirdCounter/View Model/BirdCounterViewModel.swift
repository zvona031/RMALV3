//
//  BirdCounterViewModel.swift
//  BirdCounter
//
//  Created by Zvonimir Pavlović on 29/04/2020.
//  Copyright © 2020 Zvonimir Pavlović. All rights reserved.
//

import Foundation
import UIKit

protocol BirdCounterViewDelegate: class {
    func changeViewLook(counter: Int,color: UIColor)
    func resetView()
}

class BirdCounterViewModel {
    
    var birdCount = 0
    weak var delegate: BirdCounterViewDelegate?
    
    init(delegate: BirdCounterViewDelegate) {
        self.delegate = delegate
    }
    
    func onPlusClicked(tag: Int) {
        birdCount += 1
        var color: UIColor = UIColor()
        if (tag == 1) {
            color = UIColor(red: 196/255, green: 235/255, blue: 241/255, alpha: 1)
        }
        else if (tag == 2) {
            color = UIColor(red: 241/255, green: 206/255, blue: 136/255, alpha: 1)
        }
        else if (tag == 3) {
            color = UIColor(red: 210/255, green: 215/255, blue: 213/255, alpha: 1)
        }
        else if (tag == 4) {
            color = UIColor(red: 234/255, green: 228/255, blue: 190/255, alpha: 1)
        }
        SharedPreferences.shared.setBackgroundColor(color: color)
        SharedPreferences.shared.setBirdCounter(counter: birdCount)
        delegate?.changeViewLook(counter: birdCount, color: color)
        print("Color",SharedPreferences.shared.getBackgroundColor())
        print("Counter",SharedPreferences.shared.getBirdCounter())
    }
    
    func onResetClicked(){
        birdCount = 0
        SharedPreferences.shared.setBackgroundColor(color: UIColor.white)
        SharedPreferences.shared.setBirdCounter(counter: birdCount)
        delegate?.resetView()
        print("Color",SharedPreferences.shared.getBackgroundColor())
        print("Counter",SharedPreferences.shared.getBirdCounter())
    }
    
    func getBackgroundColor() -> UIColor{
        return SharedPreferences.shared.getBackgroundColor()
    }
    
    func getBirdCounter() -> Int {
        return SharedPreferences.shared.getBirdCounter()
    }
}

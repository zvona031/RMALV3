//
//  ViewController.swift
//  BirdCounter
//
//  Created by Zvonimir Pavlović on 29/04/2020.
//  Copyright © 2020 Zvonimir Pavlović. All rights reserved.
//

import UIKit

class BirdCounterController: UIViewController,BirdCounterViewDelegate {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var firstButton: UIButton!
    
    lazy var viewModel: BirdCounterViewModel = BirdCounterViewModel(delegate: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI(){
        counterLabel.text = String(viewModel.getBirdCounter())
        view.backgroundColor = viewModel.getBackgroundColor()
    }

    @IBAction func plusClicked(_ sender: UIButton) {
        viewModel.onPlusClicked(tag: sender.tag)
    }
    
    @IBAction func resetClicked(_ sender: Any) {
        viewModel.onResetClicked()
    }
    
    func changeViewLook(counter: Int,color: UIColor) {
        counterLabel.text = String(counter)
        view.backgroundColor = color
    }
    
    func resetView(){
        counterLabel.text = "0"
        view.backgroundColor = UIColor.white
    }
    
}


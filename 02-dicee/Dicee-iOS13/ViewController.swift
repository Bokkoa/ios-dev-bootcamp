//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //  Binding with ctrl + click in storyboard
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // is here for iterability, if whe put it in rollButtonPressed, the value os gonna be the same
//    var leftDiceNumber = 1
//    var rightDicenumber = 4


    // Binding with ctrl + click drag and drop from storyboard
    // Action, button pressed
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [ UIImage(named: "DiceOne"), UIImage(named: "DiceFive"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"),UIImage(named: "DiceSix") ]
        
        // second array value means the position from first array
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
    
        // do the same but in less code
        diceImageView2.image = diceArray.randomElement() as? UIImage
        
    }
    
}


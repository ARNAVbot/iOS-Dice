//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allws me to reference a UI element
    // if u want to change the name , then right click on the name, and select refactor. this is because similar name existis in ur MainStoryboard file as well which needs to be updated too
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
            to set the image , type imageLiteral, select the 1st option , then click the icon that appears and then select the image that you want to set.
         */
//        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
//        diceImageView1.alpha = 0.5
//
//        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    }


    //used to handle ui Actions
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("left dice number at beginning = \(leftDiceNumber)")
        
        //declaring a variabled as 'let' does not allow us to update its value
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        leftDiceNumber += 1
        rightDiceNumber -= 1
        
        //the 3 dots are used to specify a range
//        print(Int.random(in: 1...10))
        
    }
}


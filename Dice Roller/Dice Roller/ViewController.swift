//
//  ViewController.swift
//  Dice Roller
//
//  Created by Brandon wright on 11/29/17.
//  Copyright © 2017 Brandon wright. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = diceArray[randomDiceIndex1]
        diceImageView2.image = diceArray[randomDiceIndex2]
    }
    
}


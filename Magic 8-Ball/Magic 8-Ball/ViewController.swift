//
//  ViewController.swift
//  Magic 8-Ball
//
//  Created by Brandon wright on 11/29/17.
//  Copyright © 2017 Brandon wright. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var magicBallImage1: UIImageView!
    let answerArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        updateImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImage()
    }
    
    func updateImage() {
        magicBallImage1.image = answerArray[Int(arc4random_uniform(5))]
    }

}


//
//  ViewController.swift
//  Xylophone
//
//  Created by Arshem Web Solutions www.arshem.com
//  Copyright © 2017 Arshem Web Solutions. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        //print(sender.tag)
        var note = String(sender.tag)
        
        guard let noteSound = Bundle.main.url(forResource: "note"+note, withExtension: "wav") else { return }
        
        do {

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: noteSound, fileTypeHint: AVFileType.wav.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
        
    }


}


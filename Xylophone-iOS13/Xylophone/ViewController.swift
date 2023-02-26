//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton)
    {
        //change opacity
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2)
        {
            sender.alpha = 1.0
        }
        // play sound
        var keyName = sender.currentTitle!
        playSound(keyName: keyName)
        
        
    }
    
    func playSound(keyName: String)
    {
        let url = Bundle.main.url(forResource: keyName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}


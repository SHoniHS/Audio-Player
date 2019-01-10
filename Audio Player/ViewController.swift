//
//  ViewController.swift
//  Audio Player
//
//  Created by SHS on 10/1/19.
//  Copyright © 2019 SHS. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audiopath = Bundle.main.path(forResource: "CantataBach", ofType: "mp3")
        
        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audiopath!))
            
            player.play()
            
        } catch {
            
            //Process any errors
            
        }
        
    }


}


//
//  ViewController.swift
//  xylophone
//
//  Created by Алмагуль Абдыгали on 20.10.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController , AVAudioPlayerDelegate{
    
    var audio: AVAudioPlayer!, soundArray = ["A","B","C","D","E","F","G", ""]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let selectedSound = soundArray[(sender.tag)]
        playSound(chooseSound: selectedSound)
    }
    // creating function that plays sound
    func playSound(chooseSound : String ){
        let soundurl = Bundle.main.url(forResource: chooseSound, withExtension: ".wav")
        
        do{
            try audio = AVAudioPlayer(contentsOf: soundurl! )
            audio.prepareToPlay()
            audio.play()
        }
        catch{
            print(error)
        }
    }
    
}


//
//  ViewController.swift
//  Xylophone
//
//  Created by Mennan Sevim on 03.01.2019
//  Copyright © 2018. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let noteId = "note\(sender.tag)"
        playSound(noteId: noteId)
    }
    
    // play sound
    func playSound(noteId : String)
    {
        let soundURL = Bundle.main.url(forResource: noteId, withExtension: "wav")
        
        do
        {
            audioPlayer = try AVAudioPlayer( contentsOf : soundURL!)
        }
        catch
        {
            print(error)
        }
        
        audioPlayer.play()
    }

}


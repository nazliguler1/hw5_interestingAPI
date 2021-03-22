//
//  ViewController.swift
//  text_to_speech
//
//  Created by Nazlı Güler on 22.03.2021.
//  Copyright © 2021 Nazlı Güler. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let syntesizer = AVSpeechSynthesizer()
   
    @IBOutlet weak var txt: UITextView!
    
    @IBOutlet weak var LabelD: UILabel!
    
    @IBOutlet weak var LabelB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

   
    
    @IBAction func Speak(_ sender: UIButton) {
        let utterance = AVSpeechUtterance(string: txt.text)
        syntesizer.speak(utterance)
    }
    @IBAction func Stop(_ sender: UIButton) {
        syntesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
    }
    @IBAction func Pause(_ sender: UIButton) {
        syntesizer.pauseSpeaking(at: AVSpeechBoundary.immediate)
    }
    @IBAction func Resume(_ sender: UIButton) {
        syntesizer.continueSpeaking()
    }

    
}


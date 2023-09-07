//
//  ViewController.swift
//  Xylophone
//
//
//  Created by Isaac Bonilla on 8/20/23.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        sender.layer.opacity = 0.5
        
        print("button is \(String(describing: sender.currentTitle))")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            print("button alpha back to 1")
            sender.layer.opacity = 1
        }
    }
    
    func playSound(soundName: String) {
        print("Sound played")
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}



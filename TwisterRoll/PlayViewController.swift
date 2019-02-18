//
//  PlayViewController.swift
//  TwisterRoll
//
//  Created by macbook on 02/02/2019.
//  Copyright © 2019 starlight. All rights reserved.
//

import UIKit
import AVFoundation

class PlayViewController: UIViewController {
    
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = randomColor()
        // Do any additional setup after loading the view.
    }
    
    
    func randomColor() -> UIColor {
        
        let text = arc4random() % 4;
        
        switch (text) {
        case 0:
            return UIColor.blue
        case 1:
            return UIColor.green
        case 2:
            return UIColor.yellow
        case 3:
            return UIColor.red
        default:
            return UIColor.blue
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        repeatingV()
        }
    
    func repeatingV () {
        var index = 0
        repeat {
            changeView()
            print(index)
            index += 1
        } while index <= 5
    }
        
        func changeView() {
            self.view.backgroundColor = randomColor()
            var imageNames = ["leftHand", "rightHand", "leftLeg", "rightLeg"]
            let imageRandom:Int = Int(arc4random_uniform(4))
            imageView.image = UIImage(named: imageNames[imageRandom])
            // Left hand vars
            
            if (imageView.image == UIImage (named: imageNames[0]) && view.backgroundColor == UIColor.blue) {
                actionLabel.text = "Левая рука на синий"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "leftHandBlue", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            if (imageView.image == UIImage (named: imageNames[0]) && view.backgroundColor == UIColor.green) {
                actionLabel.text = "Левая рука на зеленый"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "leftHandGreen", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            if (imageView.image == UIImage (named: imageNames[0]) && view.backgroundColor == UIColor.yellow) {
                actionLabel.text = "Левая рука на желтый"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "leftHandYellow", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            if (imageView.image == UIImage (named: imageNames[0]) && view.backgroundColor == UIColor.red) {
                actionLabel.text = "Левая рука на красный"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "leftHandRed", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            
            // Right hand vars
            
            if (imageView.image == UIImage (named: imageNames[1]) && view.backgroundColor == UIColor.blue) {
                actionLabel.text = "Правая рука на синий"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "rightHandBlue", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            if (imageView.image == UIImage (named: imageNames[1]) && view.backgroundColor == UIColor.green) {
                actionLabel.text = "Правая рука на зеленый"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "rightHandGreen", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            if (imageView.image == UIImage (named: imageNames[1]) && view.backgroundColor == UIColor.yellow) {
                actionLabel.text = "Правая рука на желтый"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "rightHandYellow", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            if (imageView.image == UIImage (named: imageNames[1]) && view.backgroundColor == UIColor.red) {
                actionLabel.text = "Правая рука на красный"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "rightHandRed", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            
            // Left leg vars
            
            if (imageView.image == UIImage (named: imageNames[2]) && view.backgroundColor == UIColor.blue) {
                actionLabel.text = "Левая нога на синий"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "leftLegBlue", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            if (imageView.image == UIImage (named: imageNames[2]) && view.backgroundColor == UIColor.green) {
                actionLabel.text = "Левая нога на зеленый"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "leftLegGreen", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            if (imageView.image == UIImage (named: imageNames[2]) && view.backgroundColor == UIColor.yellow) {
                actionLabel.text = "Левая нога на желтый"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "leftLegYellow", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            if (imageView.image == UIImage (named: imageNames[2]) && view.backgroundColor == UIColor.red) {
                actionLabel.text = "Левая нога на красный"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "leftLegRed", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            
            // Right leg vars
            
            if (imageView.image == UIImage (named: imageNames[3]) && view.backgroundColor == UIColor.blue) {
                actionLabel.text = "Правая нога на синий"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "rightLegBlue", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            if (imageView.image == UIImage (named: imageNames[3]) && view.backgroundColor == UIColor.green) {
                actionLabel.text = "Правая нога на зеленый"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "rightLegGreen", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
            }
            if (imageView.image == UIImage (named: imageNames[3]) && view.backgroundColor == UIColor.yellow) {
                actionLabel.text = "Правая нога на желтый"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "rightLegYellow", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
                
            }
            if (imageView.image == UIImage (named: imageNames[3]) && view.backgroundColor == UIColor.red) {
                actionLabel.text = "Правая нога на красный"
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "rightLegRed", ofType: "aiff")!))
                    audioPlayer.play()
                }
                catch {
                    print(error)
                }
                
            }
    }
}

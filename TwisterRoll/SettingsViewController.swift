//
//  SettingsViewController.swift
//  TwisterRoll
//
//  Created by macbook on 06/02/2019.
//  Copyright © 2019 starlight. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var voiceSwitch1 : Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func voiceSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            voiceSwitch1 = true
        }
        else{
            voiceSwitch1 = false
        }
    }
}

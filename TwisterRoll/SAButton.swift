//
//  SAButton.swift
//  TwisterRoll
//
//  Created by macbook on 05/02/2019.
//  Copyright © 2019 starlight. All rights reserved.
//

import UIKit

class SAButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        backgroundColor     = UIColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0)
        titleLabel?.font    = UIFont(name: "Arial", size: 22)
        layer.cornerRadius  = frame.size.height/2
        setTitleColor(.white, for: .normal)
    }
}

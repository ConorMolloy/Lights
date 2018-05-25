//
//  ViewController.swift
//  Lights
//
//  Created by Conor Molloy on 25/05/2018.
//  Copyright © 2018 Conor Molloy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffButton: UILabel!
    @IBOutlet weak var powerButton: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func powerButtonPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off {
            powerButton.setImage(UIImage(named: "offBtn"), for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
            onOffButton.text = "OFF"
            onOffButton.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            powerButton.setImage(UIImage(named: "onBtn"), for: .normal)
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            onOffButton.text = "ON"
            onOffButton.textColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
        }
    }
}


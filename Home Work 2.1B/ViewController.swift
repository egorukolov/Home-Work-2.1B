//
//  ViewController.swift
//  Home Work 2.1B
//
//  Created by Egor Ukolov on 20.05.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    @IBOutlet var startNextButtom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignalView.layer.cornerRadius = 60
        yellowSignalView.layer.cornerRadius = 60
        greenSignalView.layer.cornerRadius = 60
        
        redSignalView.alpha = 0.5
        yellowSignalView.alpha = 0.5
        greenSignalView.alpha = 0.5
    }


    @IBAction func startButtomPressed() {
        
        startNextButtom.setTitle("Next", for: .normal)
        
        if redSignalView.alpha == 0.5 && yellowSignalView.alpha == 0.5 && greenSignalView.alpha == 0.5 {
            redSignalView.alpha = 1
        } else if redSignalView.alpha == 1 {
            redSignalView.alpha = 0.5
            yellowSignalView.alpha = 1
        } else if yellowSignalView.alpha == 1 {
            yellowSignalView.alpha = 0.5
            greenSignalView.alpha = 1
        } else if greenSignalView.alpha == 1  {
            redSignalView.alpha = 1
            greenSignalView.alpha = 0.5
        }
    }
}


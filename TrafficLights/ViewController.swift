//
//  ViewController.swift
//  TrafficLights
//
//  Created by Alexandr Barabash on 02.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redSignal: UIView!
    @IBOutlet weak var yellowSignal: UIView!
    @IBOutlet weak var greenSignal: UIView!
    @IBOutlet weak var starButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignal.alpha = 0.3
        yellowSignal.alpha = 0.3
        greenSignal.alpha = 0.3
        
        starButton.layer.cornerRadius = 10
    
    }

    @IBAction func startButtonPress() {

        if redSignal.alpha == 0.3 {
            redSignal.alpha = 1
        } else if redSignal.alpha == 1 {
            redSignal.alpha = 0.3
            yellowSignal.alpha = 1
        } else if yellowSignal.alpha == 1 {
            yellowSignal.alpha = 0.3
            greenSignal.alpha = 1
        } else if greenSignal.alpha == 1 {
            greenSignal.alpha = 0.3
        }
    
}
}

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
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignal.alpha = lightIsOff
        yellowSignal.alpha = lightIsOff
        greenSignal.alpha = lightIsOff
        
        starButton.layer.cornerRadius = 10
    }
    
    override func viewDidLayoutSubviews() {
        redSignal.layer.cornerRadius = redSignal.frame.width / 2
        yellowSignal.layer.cornerRadius = yellowSignal.frame.width / 2
        greenSignal.layer.cornerRadius = greenSignal.frame.width / 2
    }

    @IBAction func startButtonPress() {
        starButton.setTitle("NEXT", for: .normal)
        
        if redSignal.alpha == lightIsOn {
            redSignal.alpha = lightIsOff
            yellowSignal.alpha = lightIsOn
        } else if yellowSignal.alpha == lightIsOn {
            yellowSignal.alpha = lightIsOff
            greenSignal.alpha = lightIsOn
        } else {
            redSignal.alpha = lightIsOn
            greenSignal.alpha = lightIsOff
        }
    }
}

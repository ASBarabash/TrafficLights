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
    }
    
}


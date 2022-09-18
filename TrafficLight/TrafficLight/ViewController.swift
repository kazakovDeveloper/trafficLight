//
//  ViewController.swift
//  TrafficLight
//
//  Created by Kazakov Danil on 15.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
        startButton.layer.cornerRadius = 10
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startButtonAction(_ sender: UIButton) {
        changeColor()
        startButton.setTitle("NEXT", for: .normal)
    }
    
    func changeColor() {
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        } else if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        }
    }
    
    
}


//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Douglas Alexander on 4/25/18.
//  Copyright © 2018 Douglas Alexander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapDetected(_ sender: UITapGestureRecognizer) {
        statusLabel.text = "Double Tap"
    }
    
    @IBAction func pinchDetected(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        let velocity = sender.velocity
        let resultString = "Pinch: scale = \(scale), velocity = \(velocity)"
        statusLabel.text = resultString
    }
    
    @IBAction func rotationDetected(_ sender: UIRotationGestureRecognizer) {
        let radians = sender.rotation
        let velocity = sender.velocity
        let resultString = "Rotation: Radians = \(radians), velocity = \(velocity)"
        statusLabel.text = resultString
    }
    
    @IBAction func swipeDetected(_ sender: UISwipeGestureRecognizer) {
        statusLabel.text = "RightSwipe"
    }
    
    @IBAction func longPressDetected(_ sender: UILongPressGestureRecognizer) {
        statusLabel.text = "Long Press"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


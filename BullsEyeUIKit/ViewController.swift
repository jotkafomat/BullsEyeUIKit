//
//  ViewController.swift
//  BullsEyeUIKit
//
//  Created by Krzysztof Jankowski on 21/06/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    var currentValue: Int = 0
    var targetValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is now \(currentValue)" +
        "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(
            title: "Hello World",
            message: message,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "Awesome",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    func startNewRound() {
      targetValue = Int.random(in: 1...100)
      currentValue = 50
      slider.value = Float(currentValue)
    }
}


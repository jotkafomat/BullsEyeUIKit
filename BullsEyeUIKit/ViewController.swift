//
//  ViewController.swift
//  BullsEyeUIKit
//
//  Created by Krzysztof Jankowski on 21/06/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var roundLabel: UILabel!
    
    var currentValue: Int = 0
    var targetValue = 0
    var score = 0
    var round = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    @IBAction func showAlert() {
        let difference = abs(currentValue - targetValue)
        let points = 100 - difference
        
        score += points
        
        let message = "The value of the slider is now \(currentValue)" +
            "\nThe target value is: \(targetValue)" +
        "\nThe difference is: \(difference)" +
        "\nYour score \(points) points"
        
        let alert = UIAlertController(
            title: "Score for \(round). round",
            message: message,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "Awesome",
            style: .default,
            handler: { _ in self.startNewRound() })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    func startNewRound() {
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
}


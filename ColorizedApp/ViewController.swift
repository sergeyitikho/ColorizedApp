//
//  ViewController.swift
//  ColorizedApp
//
//  Created by swiftbook on 01.10.2023.
//  Copyright © 2023 swiftbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    @IBAction func sliderMoved() {
        redLabel.text = String(format: "%.1f", redSlider.value)
        greenLabel.text = String(format: "%.1f", greenSlider.value)
        blueLabel.text = String(format: "%.1f", blueSlider.value)
        view.backgroundColor = UIColor (red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
    private func setupView() {
        redLabel.text = String(format: "%.1f", redSlider.value)
        greenLabel.text = String(format: "%.1f", greenSlider.value)
        blueLabel.text = String(format: "%.1f", blueSlider.value)
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
    }
}


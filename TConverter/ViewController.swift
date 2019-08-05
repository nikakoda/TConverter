//
//  ViewController.swift
//  TConverter
//
//  Created by Ника Перепелкина on 01/08/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet{
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 0
        }
    }
    
    
    @IBAction func sliderVAlueChanged(_ sender: UISlider) {
        let celsiusTemperature = Int(round(sender.value))
        celsiusLabel.text = "\(celsiusTemperature)ºC"
        
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
        
    }
    
}


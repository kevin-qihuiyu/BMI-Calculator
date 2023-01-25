//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        height.text = String(format: "%.2f", sender.value) + "m"
    }


    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weight.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        bmiValue = Int(weightSlider.value/pow(heightSlider.value,2))
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToResult" {
            let resultViewController = segue.destination as! ResultViewController
            
            resultViewController.bmiValue = "\(bmiValue)"
        }
    }
}


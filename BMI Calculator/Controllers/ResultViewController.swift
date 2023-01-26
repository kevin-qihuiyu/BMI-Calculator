//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by qihuiyu on 25/01/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}

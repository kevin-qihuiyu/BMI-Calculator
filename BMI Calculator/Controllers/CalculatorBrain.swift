//
//  File.swift
//  BMI Calculator
//
//  Created by qihuiyu on 26/01/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain {
    var bmiValue : Float = 0.0
    
    mutating func calculateBmiValue(_ height: Float, _ weight: Float){
        bmiValue = weight/pow(height,2)
    }
    
    func getBmiValue() -> Float{
        return bmiValue
    }
}

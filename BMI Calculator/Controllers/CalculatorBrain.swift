//
//  File.swift
//  BMI Calculator
//
//  Created by qihuiyu on 26/01/2023.
//  Copyright © 2023 Qihui Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBmiValue(_ height: Float, _ weight: Float){
        let bmiValue = weight/pow(height,2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.systemBlue)
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.systemGreen)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.systemRed)
        }
    }
    
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}

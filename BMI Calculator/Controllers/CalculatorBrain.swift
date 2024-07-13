//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Tomohiro Hagino on 2024/07/13.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {

    var bmi: BMI?

    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1DecimalPlace
    }

    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }

    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)

        if bmiValue < 18.5 {
            let color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "もっと食べなさい！", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            let color = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "丁度いい感じです！", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            let color = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "太り過ぎ！", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
}

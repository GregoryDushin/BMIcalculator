//
//  CalculatorBrain.swift
//  BMI
//
//  Created by Григорий Душин on 28.12.2021.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
   
    mutating func calculateBMI(height: Float, weight: Float)  {
      
        let bmiValue = weight/pow(height, 2)
       
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Ешьте больше!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Все ок!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "Хватит есть!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No parameters"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}


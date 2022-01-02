//
//  ViewController.swift
//  BMI
//
//  Created by Григорий Душин on 25.12.2021.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue : String = " "
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var hightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
      let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        
       let height = hightSlider.value
       let weight = weightSlider.value
      
        calculatorBrain.calculateBMI(height: height , weight: weight)
        
        self.performSegue(withIdentifier: "go2result", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "go2result" {
            let destinationVC = segue.destination as! ResultsViewController
          
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }
    }
}


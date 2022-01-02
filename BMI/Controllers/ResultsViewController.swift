//
//  ResultsViewController.swift
//  BMI
//
//  Created by Григорий Душин on 25.12.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue : String?
    var advice : String?
    var color: UIColor?
    
    @IBOutlet weak var resultPicture: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        resultPicture.backgroundColor = color
        adviceLabel.text = advice
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    


}

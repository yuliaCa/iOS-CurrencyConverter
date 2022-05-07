//
//  ViewController.swift
//  Converter
//
//  Created by Yulia Kirienko on 2022-01-18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempText: UITextField!
    
    @IBOutlet weak var resultView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertTemp(_ sender: Any) {
        
        guard let tempString = tempText.text
        else {
            return
        }
        if let fahrenheit = Double (tempString){
            let celsius = (fahrenheit - 32) / 1.8
            let resultText = "Celsius \(celsius)"
            resultView.text = resultText
        }
    }
    
}


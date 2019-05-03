//
//  ViewController.swift
//  HWmathchild
//
//  Created by Daniel on 2019/5/2.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstnumber: UITextField!
    @IBOutlet weak var secondnumber: UITextField!
  
    @IBOutlet weak var calculate: UISegmentedControl!
    @IBOutlet weak var answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
  
    @IBAction func calculate(_ sender: UISegmentedControl) {
        self.view.endEditing(true)
        let type = calculate.selectedSegmentIndex
        let number1text = firstnumber.text
        let number1 = Int(number1text!)
        let number2text = secondnumber.text
        let number2 = Int(number2text!)
        //let finaltext = answer.text
        //var final = Double(finaltext!)
        if type == 0 {
            answer.text = String(number1! + number2!)
        } else if type == 1 {
            answer.text = String(number1! - number2!)
        } else if type == 2 {
            answer.text = String(number1! * number2!)
        } else if type == 3 {
            answer.text = String(number1! / number2!)
        }
    }
    

}


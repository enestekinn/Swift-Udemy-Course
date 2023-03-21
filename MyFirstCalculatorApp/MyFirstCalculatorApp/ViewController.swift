//
//  ViewController.swift
//  MyFirstCalculatorApp
//
//  Created by Enes Tekin on 7.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var result: UITextField!
    
    var  resultInteger = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sum(_ sender: Any) {
      
        if let  inputInteger1 = Int(input1.text!){
            if let inputInteger2 = Int(input2.text!){
                  resultInteger = inputInteger1 + inputInteger2
            
                result.text  = String(resultInteger)
            }
        }
   
        
       
    }
    
    @IBAction func subtract(_ sender: Any) {
        
          if let  inputInteger1 = Int(input1.text!){
              if let inputInteger2 = Int(input2.text!){
                    resultInteger = inputInteger1 - inputInteger2
              
                  result.text  = String(resultInteger)
              }
          }
    }
    
    @IBAction func multiply(_ sender: Any) {
        
          if let  inputInteger1 = Int(input1.text!){
              if let inputInteger2 = Int(input2.text!){
                    resultInteger = inputInteger1 * inputInteger2
              
                  result.text  = String(resultInteger)
              }
          }
    }
    
    @IBAction func divide(_ sender: Any) {
        
          if let  inputInteger1 = Int(input1.text!){
              if let inputInteger2 = Int(input2.text!){
                    resultInteger = inputInteger1 / inputInteger2
              
                  result.text  = String(resultInteger)
              }
          }
    }
    
  
    
}


//
//  ViewController.swift
//  AlertProject
//
//  Created by Enes Tekin on 8.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    
    @IBOutlet weak var password2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        
        if usernameText.text == ""{
            showAlert(message: "username field is empty")
        }else if passwordText.text == "" {
            showAlert(message: "password field is empty")
        }else if password2Text.text != passwordText.text {
            showAlert(message: "password do not match")
        }else {
            showAlert(message: "Success")
        }
        
      
    }
    
    func showAlert(message: String){
        let alert = UIAlertController(title: "Error!", message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive) { (UIAlertAction) in
                print("Button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true,completion: nil)
    }
    
}


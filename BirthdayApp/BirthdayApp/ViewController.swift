//
//  ViewController.swift
//  BirthdayApp
//
//  Created by Enes Tekin on 7.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var birthdayField: UITextField!
    @IBOutlet weak var resultNameField: UILabel!
    @IBOutlet weak var resultBirthdayField: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            resultNameField.text = newName
            
        }
        if let newBirthday = storedBirthday as? String {
            resultBirthdayField.text = newBirthday
        }
        
        
        
    }
    
    @IBAction func save(_ sender: Any) {
        
        
        UserDefaults.standard.set(nameField.text, forKey: "name")
        UserDefaults.standard.set(birthdayField.text, forKey: "birthday")
        
        resultNameField.text = nameField.text
        resultBirthdayField.text = birthdayField.text
    }
   
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            resultNameField.text = "Name:"
            
        }
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            resultBirthdayField.text = "Birthday:"
            
        }
    }
    
    
}

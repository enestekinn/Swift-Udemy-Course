//
//  ViewController.swift
//  SequeApp
//
//  Created by Enes Tekin on 7.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var name: UITextField!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad function called")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        name.text = ""
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
  

    @IBAction func next(_ sender: Any) {
        username = name.text!
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            // as
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = username
        }
    }
    
}


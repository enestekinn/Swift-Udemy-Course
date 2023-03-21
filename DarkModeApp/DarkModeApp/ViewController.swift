//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Enes Tekin on 11.03.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var changeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     
      //  overrideUserInterfaceStyle = .light
    }
   
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userUnterfaceStyle = traitCollection.userInterfaceStyle
        
        if userUnterfaceStyle == .dark {
            changeButton.tintColor = .white
        }else {
            changeButton.tintColor = UIColor.blue
        }
    }
}


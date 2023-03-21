//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Enes Tekin on 8.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var firstPicture = true
    
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic(){
        
        if firstPicture {
            imageView.image = UIImage(named: "kirk")
            myLabel.text = "Lars Ulrich"
            firstPicture = false
            
        }else {
            imageView.image = UIImage(named: "jameshetfield")
            myLabel.text = "James Hetfield"
            firstPicture = true
        }
    }
}



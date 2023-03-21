//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Enes Tekin on 6.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func changeClicked(_ sender: Any) {
        imageView.image = UIImage(named: "image1")
        
    
    }
}


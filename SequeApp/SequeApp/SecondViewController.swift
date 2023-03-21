//
//  SecondViewController.swift
//  SequeApp
//
//  Created by Enes Tekin on 7.03.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    var myName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
        
        name.text = myName
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

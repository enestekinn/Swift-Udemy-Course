//
//  ViewController.swift
//  ThreadingProject
//
//  Created by Enes Tekin on 20.03.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var tableview: UITableView!
    
    var data = Data()
    var tracker = 0
    
    let urlStrings = ["https://www.hhi-ni.com/wp-content/uploads/2017/05/6823214-large.jpg","https://wallpaperaccess.com/full/1356237.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableview.delegate = self
        tableview.dataSource = self
        
        DispatchQueue.global().async {
            self.data = try! Data(contentsOf: URL(string: self.urlStrings[0])!) // background thread
            
            DispatchQueue.main.async {
                self.imageview.image = UIImage(data: self.data) // main thread
            }
        }
        
      
        
       
        
        self.navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(changeImage))
    }
    @objc func changeImage() {
        
        if tracker == 0 {
            tracker += 1
        }else {
            tracker -= 1
        }
        DispatchQueue.global().async {
            self.data = try! Data(contentsOf: URL(string: self.urlStrings[self.tracker])!) // background thread
            
            DispatchQueue.main.async {
                self.imageview.image = UIImage(data: self.data) // main thread
            }
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Therading Test"
        return cell
    }

    

}


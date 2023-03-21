//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Enes Tekin on 9.03.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var simpson = [Simpson]()
    var chosenSimpson: Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let homer = Simpson(name: "Homer", job: "Nuclear Safety", image: UIImage(named: "homer")!)
        let marge = Simpson(name: "Maggie", job: "House Wife", image: UIImage(named: "margaret")!)
        
        let bart = Simpson(name: "Bart", job: "Student", image: UIImage(named: "bart")!)
        
        let lisa = Simpson(name: "Lisa", job: "Student", image: UIImage(named: "lisa")!)
        let maggie = Simpson(name: "Maggie", job: "Baby", image: UIImage(named: "margaret")!)
        
        
        simpson = [homer,marge,bart,lisa,maggie]
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = simpson[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         chosenSimpson = simpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVc", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVc" {
            let destinationVc = segue.destination as! DetailsViewController
            
            destinationVc.selectedSimpson = chosenSimpson
        }
    }
    
    
  
    


}


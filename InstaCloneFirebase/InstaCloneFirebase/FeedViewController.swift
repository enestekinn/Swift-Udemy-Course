//
//  FeedViewController.swift
//  InstaCloneFirebase
//
//  Created by Enes Tekin on 12.03.2023.
//

import UIKit
import Firebase
import SDWebImage

class FeedViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var useremailArray = [String]()
    var usercommentArray = [String]()
    var likeArray = [Int]()
    var userImageArray  = [String]()
    var documentIdArray = [String]()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        getDataFromFirestore()
        
        
    }
    
    func getDataFromFirestore() {
        let firestoreDatabase = Firestore.firestore()
        
        firestoreDatabase.collection("Posts").order(by: "date",descending: true).addSnapshotListener { snapshot, error in
            if error != nil {
                print("Error")
            }else {
                if snapshot?.isEmpty != true {
                    
                    self.useremailArray.removeAll()
                    self.userImageArray.removeAll()
                    self.usercommentArray.removeAll()
                    self.likeArray.removeAll()
                    self.documentIdArray.removeAll()
                    
                    
                    for document in snapshot!.documents{
                        let documentId = document.documentID
                        self.documentIdArray.append(documentId)
                        
                        if let  postedBy = document.get("postedBy") as? String {
                            self.useremailArray.append(postedBy)
                            
                        }
                        if let postComment = document.get("postComment") as? String {
                            self.usercommentArray.append(postComment)
                        }
                        if let likes = document.get("likes") as? Int {
                            self.likeArray.append(likes)
                        }
                        if let imageUrl = document.get("imageUrl") as? String {
                            self.userImageArray.append(imageUrl)
                          
                        }
                        
                    }
                    
                    self.tableView.reloadData()

                }
            }
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return useremailArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        
        print("User email array count \(useremailArray.count)")
        
        cell.useremailLabel.text =  useremailArray[indexPath.row]
        cell.likeLabel.text =  "\(likeArray[indexPath.row])"
        cell.commentLabel.text = usercommentArray[indexPath.row]
        cell.userImageView.sd_setImage(with: URL(string: self.userImageArray[indexPath.row]))
        cell.documentIdLabel.text = self.documentIdArray[indexPath.row]
        
        return cell
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

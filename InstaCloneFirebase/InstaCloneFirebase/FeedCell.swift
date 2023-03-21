//
//  FeedCell.swift
//  InstaCloneFirebase
//
//  Created by Enes Tekin on 13.03.2023.
//

import UIKit
import Firebase


class FeedCell: UITableViewCell {

   
    @IBOutlet weak var useremailLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var documentIdLabel: UILabel!
    
    
    

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func likeButtonClicked(_ sender: Any) {
        
        let firestoreDatabase = Firestore.firestore()
        // var firestoreReference: DocumentReference? = nil
        
        
            //userIds.append(Auth.auth().currentUser!.uid)
    
        
       
       
        
        
        
       
        
        
        
        
//       firestoreDatabase.collection("Likes")
//            .document(documentIdLabel.text!)
//            .setData(firesoreLikeId as [String : Any]){ error in
//                if let err = error {
//                    print("Error writing document: \(err)")
//                } else {
//                    print("Document successfully written!")
//                }
//                
//            }
//      
    
        
        
        
//        let firebaseReference = firestoreDatabase.collection("Likes").document(documentIdLabel.text!)
//
//        firebaseReference.getDocument(completion: { (document, error) in
//            let userId = document?.get("userId")
//        })
//
            

        
        
        

        if let likeCount = Int(likeLabel.text!){

            let likeStored = ["likes": likeCount+1] as [String: Any]
            firestoreDatabase.collection("Posts").document(documentIdLabel.text!).setData(likeStored, merge: true)

        }
        
    }
    
}

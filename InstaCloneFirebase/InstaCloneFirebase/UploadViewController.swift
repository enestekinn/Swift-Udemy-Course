//
//  UploadViewController.swift
//  InstaCloneFirebase
//
//  Created by Enes Tekin on 12.03.2023.
//

import UIKit
import Firebase

class UploadViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var commentText: UITextField!
    
    @IBOutlet weak var uploadButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        imageView.isUserInteractionEnabled = true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        imageView.addGestureRecognizer(imageTapRecognizer)
    }
    

    @objc  func selectImage() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker,animated: true,completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)
    }
    
    func makeAlert(titleInput: String,messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default,handler: nil)
        alert.addAction(okButton)
        self.present(alert,animated: true,completion: nil)
    }
    
    @IBAction func uploadClickedButton(_ sender: Any) {
        
        let storage = Storage.storage()
        let storageReference = storage.reference()
        
        let mediaFolder = storageReference.child("media")
        
        if let data = imageView.image?.jpegData(compressionQuality: 0.5){
            
            let uuid = UUID().uuidString
            let imageReference = mediaFolder.child("\(uuid).jpeg")
            imageReference.putData(data,metadata: nil) { (metada, error) in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }else {
                    imageReference.downloadURL { url, error in
                        let imageUrl = url?.absoluteString
                        
                        
                        // DB
                        
                        let firestoreDatabase = Firestore.firestore()
                        var firestoreReference : DocumentReference?  = nil
                        
                        let firestorePost = ["imageUrl": imageUrl!,"postedBy": Auth.auth().currentUser!.email, "postComment": self.commentText.text!,"date": FieldValue.serverTimestamp(),"likes": 0] as [String : Any]
                        
                        firestoreReference = firestoreDatabase.collection("Posts").addDocument(data: firestorePost ,completion: { error in
                            if error != nil {
                                self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                            }else {
                                self.imageView.image = UIImage(named: "select.png")
                                self.commentText.text = ""
                                self.tabBarController?.selectedIndex  = 0
                            }
                        })
                        
                    }
                }
            }
            
        }
        
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

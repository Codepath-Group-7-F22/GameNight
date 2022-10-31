//
//  UserEditProfileViewController.swift
//  GameNight
//
//  Created by Paige Thompson on 10/29/22.
//

import UIKit
import Parse
import AlamofireImage

class UserEditProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let user = PFUser.current()
    @IBOutlet weak var proPicView: UIImageView!
    @IBOutlet weak var fnameField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var bioField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UserEditProfileViewController.onCameraButton))
        proPicView.addGestureRecognizer(tap)
        proPicView.isUserInteractionEnabled = true

        proPicView.setRounded()
        // Do any additional setup after loading the view.
    }
    
    @objc func onCameraButton(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as! UIImage
        let size = CGSize(width:300, height: 300)
        let scaledImg = image.af.imageScaled(to: size)
        
        proPicView.image = scaledImg
        
        dismiss(animated: true, completion: nil)
    }
    

    
    @IBAction func onSaveButton(_ sender: Any) {
        print("save button pressed")
        changeProfile()
        
        self.dismiss(animated: true, completion: nil)
        print("dismissing controller")
        }
        

    @IBAction func onCancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        print("cancelled user profile edits")
    }
    
    
    
    
    

    func changeProfile() {
        //Set up User's Profile View
        let query = PFQuery(className:"UserProfile")
        query.whereKey("user", equalTo: user!)
        query.findObjectsInBackground { (objects: [PFObject]?, error: Error?) in
            if let error = error {
                // Log details of the failure
                print(error.localizedDescription)
            } else if let objects = objects {
                // The find succeeded.
                print("Successfully editing profile.")
                // Do something with the found objects
                for object in objects {
                    object["firstName"] = self.fnameField.text
                    object["location"] = self.locationField.text
                    object["bio"] = self.bioField.text
                    //upload image
                    let imageData = self.proPicView.image!.pngData()
                    let file = PFFileObject(name: "image.png", data: imageData!)
                    object["proPic"] = file
                    
                    
                    object.saveInBackground { (success, error) in
                        if success {
                            print("successfully saved changes")
                        } else {
                            print("error :\(error?.localizedDescription)")
                        }
                        
                    }
                    
                    //Want to create a set profile function
                    
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

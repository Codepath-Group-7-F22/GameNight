//
//  UserEditProfileViewController.swift
//  GameNight
//
//  Created by Paige Thompson on 10/29/22.
//

import UIKit
import Parse

class UserEditProfileViewController: UIViewController {

    let user = PFUser.current()
    @IBOutlet weak var proPicView: UIImageView!
    @IBOutlet weak var fnameField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var bioField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        proPicView.setRounded()
        // Do any additional setup after loading the view.
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

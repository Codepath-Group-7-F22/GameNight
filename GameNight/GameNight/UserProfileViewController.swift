//
//  UserProfileViewController.swift
//  GameNight
//
//  Created by lester on 10/22/22.
//

import UIKit
import Parse

class UserProfileViewController: UIViewController {

    let user = PFUser.current()
    
    @IBOutlet weak var profilePicView: UIImageView!
    @IBOutlet weak var fnameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getProfile()

        //Make Profile Pic Circular
        profilePicView.setRounded()
    }
    
    func getProfile() {
        //Set up User's Profile View
        let query = PFQuery(className:"UserProfile")
        query.whereKey("user", equalTo: user!)
        query.findObjectsInBackground { (objects: [PFObject]?, error: Error?) in
            if let error = error {
                // Log details of the failure
                print(error.localizedDescription)
            } else if let objects = objects {
                // The find succeeded.
                print("Successfully retrieved \(objects.count) scores.")
                // Do something with the found objects
                for object in objects {
                    print(object as Any)
                    
                    self.fnameLabel.text = object["firstName"] as? String
                    //Want to create a set profile function
                }
            }
        }

    }
    

    
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOut()
        
        let defaults = UserDefaults.standard
        defaults.set(false, forKey: "hasLogin")
        defaults.synchronize()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "loginViewController")
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowScene.delegate as? SceneDelegate else { return }
        delegate.window?.rootViewController = loginViewController
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

extension UIImageView {
    func setRounded() {
        //Make profile image rounded
        self.layer.cornerRadius = (self.frame.height / 2)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        clipsToBounds = true
        self.layer.masksToBounds = true
    }
}

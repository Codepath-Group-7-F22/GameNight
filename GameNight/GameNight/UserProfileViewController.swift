//
//  UserProfileViewController.swift
//  GameNight
//
//  Created by lester on 10/22/22.
//

import UIKit
import Parse

class UserProfileViewController: UIViewController {

    //var user = PFObject()
    
    @IBOutlet weak var userprofileView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var userageLabel: UILabel!
    @IBOutlet weak var userbioLabel: UILabel!
    @IBOutlet weak var userlocationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let query = PFQuery(className: "UserProfile")
        query.whereKey("user", equalTo: PFUser.current()!)
        
        query.findObjectsInBackground { (user: [PFObject]?, error: Error?) in
            if let error = error {
                print(error.localizedDescription)
            } else if let user = user {
                print("Successfully retrieved \(user)")
                for data in user {
                    self.usernameLabel.text = data.object(forKey: "name") as? String
                    self.userageLabel.text = data.object(forKey: "age") as? String
                    self.userbioLabel.text = data.object(forKey: "bio") as? String
                    self.userlocationLabel.text = data.object(forKey: "location") as? String
                }
            }
                
            }
        }

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



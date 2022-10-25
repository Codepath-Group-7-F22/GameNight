//
//  UserProfileViewController.swift
//  GameNight
//
//  Created by lester on 10/22/22.
//

import UIKit

class UserProfileViewController: UIViewController {

    
    @IBOutlet weak var userprofileView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var userageLabel: UILabel!
    @IBOutlet weak var userbioLabel: UILabel!
    @IBOutlet weak var userlocationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func editProfile(_ sender: Any) {
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

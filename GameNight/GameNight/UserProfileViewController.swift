//
//  UserProfileViewController.swift
//  GameNight
//
//  Created by lester on 10/22/22.
//

import UIKit
import Parse

class UserProfileViewController: UIViewController {

    
    @IBOutlet weak var profilePicView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Make Profile Pic Circular
        profilePicView.setRounded()
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

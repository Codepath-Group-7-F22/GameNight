//
//  UserEditProfileViewController.swift
//  GameNight
//
//  Created by Paige Thompson on 10/29/22.
//

import UIKit

class UserEditProfileViewController: UIViewController {

    
    
    @IBOutlet weak var fnameField: UITextField!
    @IBOutlet weak var lnameField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fnameField.attributedPlaceholder = NSAttributedString(string: "First Name")
        lnameField.attributedPlaceholder = NSAttributedString(string: "Last Name")
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onCancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        print("cancelled user profile edits")
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

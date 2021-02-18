//
//  resetPasswordViewController.swift
//  signUpAndLoginUsingCoreData
//
//  Created by IPHTECH 20 on 17/02/21.
//  Copyright © 2021 iPHTech20. All rights reserved.
//

import UIKit
import CoreData

class resetPasswordViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var user = ""
    var newPass = ""
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func resetButton(_ sender: Any) {
        user = userNameTextField.text!
        newPass = passwordTextField.text!
        
        if updateUserEntityDataByUserName(username: user, newPass:newPass){
            print("password updated successfully.")
            self.navigationController?.popViewController(animated: true)
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

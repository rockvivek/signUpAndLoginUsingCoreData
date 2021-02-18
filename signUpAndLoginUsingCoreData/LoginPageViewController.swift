//
//  LoginPageViewController.swift
//  signUpAndLoginUsingCoreData
//
//  Created by IPHTECH 20 on 17/02/21.
//  Copyright © 2021 iPHTech20. All rights reserved.
//

import UIKit
import CoreData

class LoginPageViewController: UIViewController {
    
    //Mark:- Variables
    var user = ""
    var pass = ""
    
    //Mark:- Outlets
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
 
    //Mark:- ViewControllerDelegates
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK:- LoginActionButton
    @IBAction func loginButton(_ sender: Any) {
        user = usernameTextField.text!
        pass = passwordTextField.text!
        
        if loginToUserEntity(user: user, pass: pass){
            print("login success")
            let vc = storyboard?.instantiateViewController(identifier: "mainPageViewController") as! mainPageViewController
            vc.username = user
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            print("login failed")
        } 
    }
    
    //MARK:- ForgetPasswordButton
    @IBAction func forgetPasswordButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "resetPasswordViewController") as! resetPasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}

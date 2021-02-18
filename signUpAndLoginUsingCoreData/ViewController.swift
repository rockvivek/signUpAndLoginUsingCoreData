//
//  ViewController.swift
//  signUpAndLoginUsingCoreData
//
//  Created by IPHTECH 20 on 17/02/21.
//  Copyright © 2021 iPHTech20. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
   
    //MARK:- Variables
    var usernameData = ""
    var emailData = ""
    var passwordData = ""
    
        
    //MARK:- ViewControllerDelegates
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- ButtonAction
    @IBAction func signUpButton(_ sender: Any) {
        usernameData = userNameTextField.text!
        emailData = emailTextField.text!
        passwordData = passwordTextField.text!
        if isPasswordStrong(password: passwordData){
            print("strong password")
            if saveDataToUserEntity(username: usernameData, email: emailData, password: passwordData) {
                //navigate to login page get called
                navigateToLoginpage()
            }
            else {
                print("something went wrong")
            }
        }
        else{
            print("not a strong password")
        }
        
    }
    @IBAction func loginButton(_ sender: Any) {
        navigateToLoginpage()
    }
    
    //MARK:- NavigateToLoginPage
    func navigateToLoginpage() {
       let vc = storyboard?.instantiateViewController(identifier: "LoginPageViewController") as! LoginPageViewController
       self.navigationController?.pushViewController(vc, animated: true)
    }
}


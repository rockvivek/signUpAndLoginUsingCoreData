//
//  mainPageViewController.swift
//  signUpAndLoginUsingCoreData
//
//  Created by IPHTECH 20 on 18/02/21.
//  Copyright © 2021 iPHTech20. All rights reserved.
//

import UIKit

class mainPageViewController: UIViewController {

    //MARK:- Variables
    var username = ""
    //MARK:- ViewControllerDelegate
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK:- deleteAccountAction
    @IBAction func deleteAccountButton(_ sender: Any) {
        if deleteUserEntityDataByUsername(entity: "User", username: username) {
            print("userData Deleted")
            
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

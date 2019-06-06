//
//  LoginViewController.swift
//  Cloud Study
//
//  Created by Student on 4/20/17.
//  Copyright © 2017 SJSU. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var status: UILabel!
    
    
    @IBAction func login(_ sender: AnyObject) {
        let userName = username.text
        let userPassword = password.text
        
        let userNameStored = UserDefaults.standard.string(forKey: "userName")
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword")
        
        if(userNameStored == userName){
            if(userPasswordStored == userPassword){
                UserDefaults.standard.set(true,forKey:"isUserLoggedIn")
                UserDefaults.standard.synchronize()
                
                //self.dismiss(animated: true, completion:nil)
                self.performSegue(withIdentifier: "mySegue", sender: nil)
            } 
                
            } else {
                self.status.text = " Invalid credentials.Try again."
            
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

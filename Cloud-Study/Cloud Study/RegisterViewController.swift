//
//  RegisterViewController.swift
//  Cloud Study
//
//  Created by Student on 4/20/17.
//  Copyright © 2017 SJSU. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var repeatPassword: UITextField!
    
    @IBAction func saveAccount(_ sender: AnyObject) {
        let userName = username.text;
        let userPassword = password.text;
        let userRepeatPassword = repeatPassword.text;
        
        if((userName?.isEmpty)! || (userPassword?.isEmpty)! || (userRepeatPassword?.isEmpty)!){
            
            displayMyAlertMessage(userMessage: "All fields are required");
            return;
        }
        
        if(userPassword != userRepeatPassword){
            displayMyAlertMessage(userMessage: "Passwords do not match");
            return;
        }
        
        //store user data, since cloudKit failed
        UserDefaults.standard.set(userName, forKey: "userName")
        UserDefaults.standard.set(userPassword, forKey: "userPassword")
        UserDefaults.standard.synchronize()
        
        // Display alert message with confirmation.
        let myAlert = UIAlertController(title:"Alert", message:"Registration is successful. Thank you!", preferredStyle: UIAlertControllerStyle.alert);
            
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default){ action in
               //self.dismiss(animated: true, completion:nil);
            
        }
            
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);
        
    }
    
    func displayMyAlertMessage(userMessage: String){
        
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated:true, completion:nil);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gotoLogin(_ sender: Any) {
        self.performSegue(withIdentifier: "mySegueFrmRegToLog", sender: nil)
    }
}

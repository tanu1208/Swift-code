//
//  CreateNewDeckViewController.swift
//  Cloud Study
//
//  Created by Student on 4/20/17.
//  Copyright © 2017 SJSU. All rights reserved.
//

import UIKit

class CreateNewDeckViewController: UIViewController {
    private var controller = CloudStudyController()
    
    func createAlert (title: String, message: String) {
        let noDeckNameAlert = UIAlertController (title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        noDeckNameAlert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: { (action) in
            noDeckNameAlert.dismiss(animated: true, completion: nil)
        }))
        self.present(noDeckNameAlert, animated: true, completion: nil)
    }
    @IBOutlet weak var deckNameField: UITextField!
    @IBAction func createButton(_ sender: UIButton) {
        if deckNameField.text == ""{
            createAlert(title: "Error", message: "Please include a name for your new deck.")
        }
        else {
            controller.setNewDeck(key: deckNameField!.text!)
        }
    
        
        
        
        
        
        
        
        
        
        
        
        
    func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    }
}

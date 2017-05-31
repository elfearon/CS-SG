//
//  LoginViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/31/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
   
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextField.clearButtonMode = UITextFieldViewMode.whileEditing;
        
        emailTextField.clearButtonMode = UITextFieldViewMode.whileEditing;
        
    
    }
    
    let ref = FirebaseAPI()
    
    
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        
        var userEmail = emailTextField.text
        var userPassword = passwordTextField.text
        var users_array : [FirebaseAPI.User]
        
        // Displays alert message
        func displayAlertMessage(userMessage: String){
            let myAlert = UIAlertController(title: "Oops!", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
            let okOption = UIAlertAction(title: "Got it!", style: UIAlertActionStyle.default,handler: nil)
            myAlert.addAction(okOption)
            self.present(myAlert, animated: true, completion: nil)
        }
        
        // Check for empty fields
        if ((userEmail?.isEmpty)! || (userPassword?.isEmpty)!) {
            displayAlertMessage(userMessage: "Login details incorrect / missing.")
            return
        } else {
            //ref.getMentors(callback: displayUsers)
            FIRAuth.auth()!.signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                print(user)
                self.performSegue(withIdentifier: "segue", sender: nil)
                // ...
            }
            
        }
//        if ((userEmail == "tliu623@stanford.edu") && (userPassword == "cs50rocks")) {
//
//        }
        
        // Store data
        
        
    }
    
//    func displayUsers(users: [FirebaseAPI.User]) -> Void {
//        print(users)
//        for user in users {
//            print(user)
//            if ((user.email == self.emailTextField.text) && (user.password == self.passwordTextField.text)) {
//                self.performSegue(withIdentifier: "segue", sender: nil)
//            }
//        }
//    }
    
    
}

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
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var lastTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var joinButton: UIButton!
    
    var answers = [String : AnyObject]()

    struct Question {
        var title : String
        var subtitle : String
        var answers : [String] = [String]()
    }
    
    //var mentee : Mentee?
    
    
    //TODO: validation for user input
    
    @IBAction func passwordEdited(_ sender: AnyObject) {
        if (passwordTextField.text == "") {
            passwordTextField.text = "Password"
        } else {
            answers["password"] = passwordTextField.text! as AnyObject
        }
    }
    
    @IBAction func emailEdited(_ sender: AnyObject) {
        if (emailTextField.text == "") {
            emailTextField.text = "Email"
        } else {
            answers["email"] = emailTextField.text! as AnyObject
        }
    }
    
    @IBAction func lastEdited(_ sender: AnyObject) {
        if (lastTextField.text == "") {
            lastTextField.text = "Last"
        } else {
            answers["last_name"] = lastTextField.text! as AnyObject
        }
    }
    
    @IBAction func firstEdited(_ sender: AnyObject) {
        if (firstTextField.text == "") {
            firstTextField.text = "First"
        } else {
            answers["first_name"] = firstTextField.text! as AnyObject
        }
    }
    
    @IBAction func joinPressed(_ sender: AnyObject) {
        //TODO: create mentee account
        
        if (firstTextField.text! != "" && lastTextField.text! != "" && emailTextField.text! != "" && passwordTextField.text! != "") {

            self.performSegue(withIdentifier: "Login_Hello", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Login_Hello" {
            let welcomeController = segue.destination as! WelcomeMenteeViewController
            welcomeController.answers = answers
        }
    }
    
    //TODO: ADD GESTURE REGOGNIZER TO STOP TEXTFIELD EDITING
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBorders()
        let UIController = CommonUIElements()
        UIController.setGradientBackground(self, height: nil)
    }
    
    func setBorders() {
        joinButton.layer.borderWidth = 1
        joinButton.layer.borderColor = UIColor.white.cgColor
        joinButton.setTitleColor(UIColor.white, for: UIControlState())
        
        lastTextField.layer.borderWidth = 1
        lastTextField.layer.borderColor = UIColor.white.cgColor
        
        firstTextField.layer.borderWidth = 1
        firstTextField.layer.borderColor = UIColor.white.cgColor
        
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.white.cgColor
        
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.white.cgColor
    }
    
    
}

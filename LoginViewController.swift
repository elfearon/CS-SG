//
//  LoginViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/31/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var lastTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var joinButton: UIButton!
    
    struct Mentee {
        var first : String
        var last : String
        var email : String
        var password : String
    }
    
    var mentee : Mentee?
    
    //TODO: validation for user input
    
    @IBAction func passwordEdited(sender: AnyObject) {
        if (passwordTextField.text == "") {
            passwordTextField.text = "Password"
        } else {
            mentee!.password = passwordTextField.text!
        }
    }
    
    @IBAction func emailEdited(sender: AnyObject) {
        if (emailTextField.text == "") {
            emailTextField.text = "Email"
        } else {
            mentee!.email = emailTextField.text!
        }
    }
    
    @IBAction func lastEdited(sender: AnyObject) {
        if (lastTextField.text == "") {
            lastTextField.text = "Last"
        } else {
            mentee!.last = lastTextField.text!
        }
    }
    
    @IBAction func firstEdited(sender: AnyObject) {
        if (firstTextField.text == "") {
            firstTextField.text = "First"
        } else {
            mentee!.first = firstTextField.text!
        }
    }
    
    @IBAction func joinPressed(sender: AnyObject) {
        //TODO: create mentee account
        
        if (mentee?.first != "" && mentee?.last != "" && mentee?.email != "" && mentee?.password != "") {
            self.performSegueWithIdentifier("Login_Hello", sender: self)
        }
    }
    
    //TODO: ADD GESTURE REGOGNIZER TO STOP TEXTFIELD EDITING
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentee = Mentee(first: "", last: "", email: "", password: "")
        
        setBorders()
        
        let UIController = CommonUIElements()
        UIController.setGradientBackground(self, height: nil)
    }
    
    func setBorders() {
        joinButton.layer.borderWidth = 1
        joinButton.layer.borderColor = UIColor.whiteColor().CGColor
        joinButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        lastTextField.layer.borderWidth = 1
        lastTextField.layer.borderColor = UIColor.whiteColor().CGColor
        
        firstTextField.layer.borderWidth = 1
        firstTextField.layer.borderColor = UIColor.whiteColor().CGColor
        
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.whiteColor().CGColor
        
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.whiteColor().CGColor
    }

}

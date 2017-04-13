//
//  ConnectMessageViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/29/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class ConnectMessageViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var previousView = ""
    
    @IBAction func backPressed(sender: AnyObject) {
        if (previousView == "MentorProf") {
            self.performSegueWithIdentifier("Message_MentorProf", sender: self)
        } else if (previousView == "FullProfile") {
            self.performSegueWithIdentifier("Message_FullProf", sender: self)
        }
    }
    
    @IBAction func noThanksPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("Message_Sent", sender: self)
    }
    
    @IBAction func sendPressed(sender: AnyObject) {
        //TODO: send message
        self.performSegueWithIdentifier("Message_Sent", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

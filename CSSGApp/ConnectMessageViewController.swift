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
    
    @IBAction func backPressed(_ sender: AnyObject) {
        if (previousView == "MentorProf") {
            self.performSegue(withIdentifier: "Message_MentorProf", sender: self)
        } else if (previousView == "FullProfile") {
            self.performSegue(withIdentifier: "Message_FullProf", sender: self)
        }
    }
    
    @IBAction func noThanksPressed(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "Message_Sent", sender: self)
    }
    
    @IBAction func sendPressed(_ sender: AnyObject) {
        //TODO: send message
        self.performSegue(withIdentifier: "Message_Sent", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

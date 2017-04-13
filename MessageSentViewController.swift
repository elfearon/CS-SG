//
//  MessageSentViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/30/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class MessageSentViewController: UIViewController {
    
    @IBOutlet weak var connectionMessage: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    
    
    @IBAction func closeWindow(sender: AnyObject) {
        self.performSegueWithIdentifier("MesSent_TabBar", sender: self)
    }

    
}
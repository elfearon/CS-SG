//
//  UnderservedBackgroundViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/24/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class UnderservedBackgroundViewController: UIViewController {
    
    @IBAction func backPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("Background_Question", sender: self)
    }
    
    @IBAction func donePressed(sender: AnyObject) {
        self.performSegueWithIdentifier("Background_LoadMentor", sender: self)
    }
    
    @IBAction func controlValueChanged(sender: AnyObject) {
        //TODO: store value in database
    }

}

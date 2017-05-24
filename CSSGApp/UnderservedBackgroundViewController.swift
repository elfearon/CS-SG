//
//  UnderservedBackgroundViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/24/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class UnderservedBackgroundViewController: UIViewController {
    
    var answers = [String : AnyObject]()
    
    @IBAction func backPressed(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "Background_Question", sender: self)
    }
    
    @IBAction func donePressed(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "Background_LoadMentor", sender: self)
    }
    
    @IBAction func controlValueChanged(_ sender: AnyObject) {
        //TODO: store value in database
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Background_LoadMentor" {
            let loadController = segue.destination as! LoadMentorsViewController
            loadController.answers = answers
        }
    }
}

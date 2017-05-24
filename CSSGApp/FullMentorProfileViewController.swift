//
//  FullMentorProfileViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/29/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class FullMentorProfileViewController: UIViewController {
    
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var jobAndCompany: UILabel!
    
    //TODO: filled by MentorProfile segue, or grabbed after MentorList segue
    var mentorProfile = ""
    var previousView = ""
    
    @IBAction func backPressed(_ sender: AnyObject) {
        if (previousView == "MentorProfile") {
            self.performSegue(withIdentifier: "FullProf_MentorProf", sender: self)
        } else if (previousView == "MentorList") {
            self.performSegue(withIdentifier: "FullProf_MentorList", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let UIController = CommonUIElements()
        UIController.setGradientBackground(self, height: 200)
        
        //TODO: programatically create views for each part of the mentor profile; add each view to the stackView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FullProf_ConMessage" {
            let controller = segue.destination as! ConnectMessageViewController
            controller.previousView = "FullProfile"
        }
    }

}

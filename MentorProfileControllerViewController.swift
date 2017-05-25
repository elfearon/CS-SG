//
//  MentorProfileControllerViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/25/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class MentorProfileControllerViewController: UIViewController {
    
    @IBOutlet weak var name: UIButton!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var job: UILabel!
    @IBOutlet weak var adviceBody: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    //TODO: GRAB OBJECT FROM DATABASE
    struct Mentor {
        var name : String
        var job : String
        var company : String
        var location: String
        var advice: String
        var image : UIImage
    }
    

//    var mentor = Mentor(name: <#String#>, job: <#String#>, company : <#String#>, location: <#String#>, advice: <#String#>, image : UIImage )
    var mentor = Mentor(name: "Matt Mentor", job: "Product Designer", company: "Switch", location: "San Francisco Bay Area", advice: "Blah blah blah", image: UIImage(named: "images-2.jpg")!)
    
    @IBAction func namePressed(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "MentorProf_FullProf", sender: self)
    }
    
    @IBAction func otherMentorsPressed(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "MentorProf_MentorList", sender: self)
    }
    
    @IBAction func connectPressed(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "MentorProf_Message", sender: self)
    }

    func callback(users: [FirebaseAPI.User]) {
        //display array of users
        var firstMentor = users[0]
        var mentor = Mentor(name: users[0].first_name, job: users[0].job, company: users[0].company, location: users[0].location, advice: users[0].type, image: UIImage(named: "images-2.jpg")!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ref = FirebaseAPI()
        ref.getMentors(callback(users: <#T##[FirebaseAPI.User]#>)) //display first one
        name.setTitle(mentor.name, for: UIControlState())
        location.text = mentor.location
        job.text = mentor.job + " at " + mentor.company
        adviceBody.text = mentor.advice
        adviceLabel.text = mentor.name + "'s Career Advice"
        
        profilePicture.image = mentor.image
        self.profilePicture.layer.cornerRadius = self.profilePicture.frame.size.width / 2
        self.profilePicture.clipsToBounds = true
        self.profilePicture.layer.borderWidth = 3.0
        self.profilePicture.layer.borderColor = (UIColor.white).cgColor
        
        let UIController = CommonUIElements()
        UIController.setGradientBackground(self, height: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MentorProf_FullProf" {
            let controller = segue.destination as! FullMentorProfileViewController
            controller.previousView = "MentorProfile"
        } else if segue.identifier == "MentorProf_Message" {
            let controller = segue.destination as! ConnectMessageViewController
            controller.previousView = "MentorProf"
        }
    }

}

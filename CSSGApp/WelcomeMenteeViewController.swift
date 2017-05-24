//
//  WelcomeMenteeViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/24/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//


import UIKit

class WelcomeMenteeViewController: UIViewController {

    @IBOutlet weak var inLogo: UIImageView!

    @IBOutlet weak var helloMentee: UILabel!
    @IBOutlet weak var subtitle2: UILabel!
    @IBOutlet weak var subtitle1: UILabel!
    
    var answers = [String : AnyObject]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        helloMentee.textColor = UIColor.white
        subtitle1.textColor = UIColor.white
        subtitle2.textColor = UIColor.white
        
        inLogo.image = UIImage(named: "In-White-28px-TM.png")
        
        let UIController = CommonUIElements()
        UIController.setGradientBackground(self, height: nil)
        
        _ = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Welcome_Birthday" {
            let birthdayController = segue.destination as! BirthdayViewController
            birthdayController.answers = answers
        }
    }
    
    func timeToMoveOn() {
        self.performSegue(withIdentifier: "Welcome_Birthday", sender: self)
    }

}

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
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        helloMentee.textColor = UIColor.whiteColor()
        subtitle1.textColor = UIColor.whiteColor()
        subtitle2.textColor = UIColor.whiteColor()
        
        inLogo.image = UIImage(named: "In-White-28px-TM.png")
        
        let UIController = CommonUIElements()
        UIController.setGradientBackground(self, height: nil)
        
        _ = NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
    }
    
    func timeToMoveOn() {
        self.performSegueWithIdentifier("Welcome_Birthday", sender: self)
    }

}

//
//  LoadMentorsViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/24/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class LoadMentorsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let UIController = CommonUIElements()
        UIController.setGradientBackground(self, height: nil)
        
        label.textColor = UIColor.whiteColor()
        
        _ = NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
    }
    
    func timeToMoveOn() {
        self.performSegueWithIdentifier("LoadMentor_SugMentor", sender: self)
    }

}

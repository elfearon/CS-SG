//
//  CommonUIElements.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/30/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class CommonUIElements: UIViewController {
    
    func setGradientBackground(_ controller: UIViewController, height: Int?) {
        let colorTop =  UIColor(red: 23.0/255.0, green: 157.0/255.0, blue: 167.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 22.0/255.0, green: 144.0/255.0, blue: 193.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        if (height == nil) {
            gradientLayer.frame = self.view.bounds
        } else {
            gradientLayer.frame = CGRect(x: 0, y: 0, width: 320, height: 200)
        }
        
        controller.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

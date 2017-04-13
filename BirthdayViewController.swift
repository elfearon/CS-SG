//
//  BirthdayViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/24/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class BirthdayViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    @IBAction func continuePressed(sender: AnyObject) {
        if (textField.text != "") {
            self.performSegueWithIdentifier("Birthday_Question", sender: self)
        }
    }
    
    override func viewDidLoad() {
        datePicker.hidden = true
        textField.tintColor = UIColor.clearColor()
        datePicker.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
    }
    
    @IBAction func textFieldPressed(sender: AnyObject) {
        if (datePicker.hidden == true) {
            datePicker.hidden = false
            getPickerValue()
        } else {
            datePicker.hidden = true
        }
    }
    
    @IBAction func pickerChanged(sender: AnyObject) {
        getPickerValue()
    }
    
    func getPickerValue() {
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
        
        let strDate = dateFormatter.stringFromDate(datePicker.date)
        textField.text = strDate
    }

}

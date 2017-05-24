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
    
    var answers = [String : AnyObject]()
    
    @IBAction func continuePressed(_ sender: AnyObject) {
        if (textField.text != "") {
            self.performSegue(withIdentifier: "Birthday_Question", sender: self)
        }
    }

    override func viewDidLoad() {
        datePicker.isHidden = true
        textField.tintColor = UIColor.clear
        datePicker.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
    }
    
    @IBAction func textFieldPressed(_ sender: AnyObject) {
        if (datePicker.isHidden == true) {
            datePicker.isHidden = false
            getPickerValue()
        } else {
            datePicker.isHidden = true
        }
    }
    
    @IBAction func pickerChanged(_ sender: AnyObject) {
        getPickerValue()
    }
    
    func getPickerValue() {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.long
        dateFormatter.timeStyle = DateFormatter.Style.none
        
        let strDate = dateFormatter.string(from: datePicker.date)
        textField.text = strDate
//        let ref = FirebaseAPI()
//        ref.addUser(first: (mentee?.first)!,last: (mentee?.last)!,email: (mentee?.email)!,password: (mentee?.password)!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Birthday_Question" {
            let intakeController = segue.destination as! IntakeQuestionsViewController
            answers["birthday"] = textField.text as AnyObject
            intakeController.answers = answers
        }
    }

}

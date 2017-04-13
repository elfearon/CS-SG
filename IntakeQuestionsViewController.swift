//
//  IntakeQuestionsViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/29/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class IntakeQuestionsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var numQuestions = 3
    var answers = [String]()
    
    struct Question {
        var title : String
        var subtitle : String
        var answers : [String] = [String]()
    }
    
    var subjectQuestion = Question(title: "What subject interests you the most?", subtitle: "We will try to find a mentor with work experience closest to your interests.", answers: ["Biology", "Chemistry", "Physics", "Mathematics", "Psychology & Sociology", "English", "History", "Linguistics & Spoken Languages", "Data Science", "Visual Arts", "Performing Arts", "Computer Science", "Engineering", "Design", "Public & Foreign Policy", "Business", "Law", "Medicine"])
    var solutionQuestion = Question(title: "If you were to solve a problem, how would you prefer to do it?", subtitle: "This helps us understand what type of job you might enjoy.", answers: ["Talking individually to other people to get advice", "Sitting down with a group of people to brainstorm solutions", "Reading about other people's solutions", "Building lots of possible solutions until I make one that works"])
    var helpQuestion = Question(title: "What is the number one skill you would like your mentor to help you with?", subtitle: "", answers: ["Learning to use LinkedIn", "Applying to colleges", "Learning to be successful in college", "Applying for jobs", "Learning to be successful in my job", "Learning what career is right for me", "Learning more about different jobs"])

    
    var currentQuestion : Question?
    var questions : [Question]?
    
    var questionNum = 0
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var explanation: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    
    @IBAction func textFieldPressed(sender: AnyObject) {
        if (picker.hidden == true) {
            picker.hidden = false
            textField.text = currentQuestion!.answers[0]
        } else {
            picker.hidden = true
        }
    }
    
    @IBAction func backPressed(sender: AnyObject) {
        questionNum -= 1
        
        if (questionNum >= 0) {
            currentQuestion = questions![questionNum]
        } else {
            self.performSegueWithIdentifier("Question_Birthday", sender: self)
        }
        
        loadView()
    }
    
    @IBAction func continuePressed(sender: AnyObject) {
        questionNum += 1
        
        if (textField.text != "") {
            if (questionNum < numQuestions) {
                currentQuestion = questions![questionNum]
            } else {
                self.performSegueWithIdentifier("Question_Background", sender: self)
            }
            
            loadQuestion()
        }
    }
    
    func loadQuestion() {
        question.text = currentQuestion!.title
        explanation.text = currentQuestion!.subtitle
        
        textField.tintColor = UIColor.clearColor()
        textField.text = ""
        
        picker.hidden = true
        picker.dataSource = self
        picker.delegate = self
        picker.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questions = [subjectQuestion, solutionQuestion, helpQuestion]
        currentQuestion = questions![questionNum]
        
        loadQuestion()
        
        for _ in 1...numQuestions {
            answers.append("")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currentQuestion!.answers.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currentQuestion!.answers[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textField.text = currentQuestion!.answers[row]
    }

}

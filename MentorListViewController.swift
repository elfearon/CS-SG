//
//  MentorListViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 3/29/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class MentorListViewController: UIViewController {
    
    let TableViewController = MentorListTableViewController()
    
    @IBOutlet weak var numberSuggestions: UILabel!
    var previousView = ""
    
    @IBAction func backPressed(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "MentorList_MentorProf", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadTableView() {
        //TODO
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MentorList_FullProf" {
            let controller = segue.destination as! FullMentorProfileViewController
            controller.previousView = "MentorList"
        }
    }

}

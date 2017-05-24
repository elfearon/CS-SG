//
//  MentorListTableViewController.swift
//  CSSGApp
//
//  Created by Erica Fearon on 4/5/17.
//  Copyright © 2017 Erica Fearon. All rights reserved.
//

import UIKit

class MentorListCell: UITableViewCell {
    
    /*@IBOutlet weak var image: UIImageView!
    @IBOutlet weak var jobAndCompany: UILabel!
    @IBOutlet weak var name: UILabel!
    
    @IBAction func connectPressed(sender: AnyObject) {
        //TODO: fetch profile
        //TODO: notify superclass and segue to FullProfile
    }*/
}

class LoadMoreCell: UITableViewCell {
    
}

class MentorListTableViewController: UITableViewController {
    
    let TableCellController = MentorListCell()
    var allMentors: [String] = [String]()
    
    override func viewDidLoad() {
        //TODO
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row >= allMentors.count) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Mentor", for: indexPath) as! MentorListCell
            //TODO: set values ofr name, job, and company
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Load", for: indexPath) as! LoadMoreCell
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO
        return 0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TODO
    }

}

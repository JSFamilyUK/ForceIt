//
//  NotesViewController.swift
//  ForceIt!
//
//  Created by Steve on 15/07/2016.
//  Copyright © 2016 Steve Marriott. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {
    
    
    @IBOutlet weak var notesTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // count the rows int the global array var tableOfNotes
        return tableOfNotes.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        // add the values of the array to the table
        cell.textLabel?.text = tableOfNotes[indexPath.row]
        
        return cell
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        notesTable.reloadData()
        
    }

}

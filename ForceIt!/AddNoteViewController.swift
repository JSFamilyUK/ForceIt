//
//  AddNoteViewController.swift
//  ForceIt!
//
//  Created by Steve on 15/07/2016.
//  Copyright © 2016 Steve Marriott. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {
    
    @IBOutlet weak var newNote: UITextField!
    
    @IBAction func saveNewNote(sender: AnyObject) {
        
        tableOfNotes.append(newNote.text!)
        
        newNote.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(tableOfNotes, forKey: "forceItNotes")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // hides the keyboard when tapping elsewhere
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    // hides the keyboard using the return key (firstResponder)
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        //"newNote" relates to the name of the relevant text field
        newNote.resignFirstResponder()
        return true
    }

}

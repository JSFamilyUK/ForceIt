//
//  DirectoryViewController.swift
//  ForceIt!
//
//  Created by Steve on 16/07/2016.
//  Copyright © 2016 Steve Marriott. All rights reserved.
//

import UIKit

class DirectoryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var forcePicker: UIPickerView!
    @IBOutlet weak var forceSelectedFromPicker: UILabel!

    //function for the number of columns in the picker
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //function counting the array to give the number of rows in the picker
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return forcePickerData.count
    }
    
    //function displaying the array rows in the picker as a string
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return forcePickerData[row]
    }
    
    //function allowing the font and colour of the picker to be changed
    func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = forcePickerData[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Verdana", size: 12.0)!,NSForegroundColorAttributeName:UIColor.blackColor()])
        return myTitle
    }
    
    //function returning the selected row from the picker
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.forceSelectedFromPicker.text = "Here is the info for " + forcePickerData[row]
    }
    
    //Returning the force data from an array based on the force selected
    
    
    //Array containing the list of available forces
    var forcePickerData = ["Please Select", "Avon and Somerset", "Bedfordshire", "BTP", "Cambridgeshire", "Cheshire", "City of London", "Civl Nuclear", "Cleveland", "Cumbria", "Derbyshire", "Devon & Cornwall", "Dorset", "Durham", "Essex", "Gloucestershire", "Greater Manchester", "Hampshire", "Hertfordshire", "Humberside", "Kent", "Lancashire", "Leicestershire", "Lincolnshire", "Merseyside", "Metropolitan Police", "MOD", "Norfolk", "North Yorkshire", "Northamptonshire", "Northumbria", "Nottinghamshire", "PSNI", "Police Service of Scotland", "South Yorkshire", "Staffordshire", "Suffolk", "Surrey", "Sussex", "Thames Valley", "Warwickshire", "West Mercia", "West Midlands", "West Yorkshire", "Wiltshire"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

}

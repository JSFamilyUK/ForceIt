//
//  DirectoryViewController.swift
//  ForceIt!
//
//  Created by Steve on 16/07/2016.
//  Copyright © 2016 Steve Marriott. All rights reserved.
//

import UIKit

class DirectoryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // Not needed as using the single line version returning the result straight to the label
    // var selectedForce = Int()
    
    @IBOutlet weak var forcePicker: UIPickerView!
    //@IBOutlet weak var forceSelectedFromPicker: UILabel!
    @IBOutlet weak var selectedIssiLabel: UILabel!
    @IBOutlet weak var selectedPhoneTextView: UITextView!
    @IBOutlet weak var selectedWebsiteTextView: UITextView!


    

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
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Verdana", size: 25.0)!,NSForegroundColorAttributeName:UIColor.blackColor()])
        return myTitle
    }
    
    //function returning the selected row from the picker
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //self.forceSelectedFromPicker.text = "Here is the info for " + forcePickerData[row]
        
        // Method for returning the value at the same index from other arrays as from the forcePickerData array
        
        // Double line version using additional var
        /*selectedForce = forcePickerData.indexOf(forcePickerData[row])!
        self.selectedIssiLabel.text = (issiData[Int(selectedForce)])*/
        
        // Single line version removing the need for the additional variable
        self.selectedIssiLabel.text = (issiData[Int(forcePickerData.indexOf(forcePickerData[row])!)])
        
        self.selectedPhoneTextView.contentInset = UIEdgeInsetsMake(0,0,0,0)
        self.selectedPhoneTextView.text = (phoneData[Int(forcePickerData.indexOf(forcePickerData[row])!)])
        
      
        self.selectedWebsiteTextView.text = (websiteData[Int(forcePickerData.indexOf(forcePickerData[row])!)])
        
    }
    
    //Returning the force data from an array based on the force selected
    
    
    
    // Array containing the list of available forces
    let forcePickerData = ["", "Avon and Somerset", "Bedfordshire", "BTP", "Cambridgeshire", "Cheshire", "City of London", "Civil Nuclear", "Cleveland", "Cumbria", "Derbyshire", "Devon & Cornwall", "Dorset", "Durham", "Dyfed Powys", "Essex", "Gloucestershire", "Greater Manchester", "Gwent", "Hampshire", "Hertfordshire", "Humberside", "Kent", "Lancashire", "Leicestershire", "Lincolnshire", "Merseyside", "Metropolitan Police", "MOD", "Norfolk", "North Yorkshire", "Northamptonshire", "Northumbria", "North Wales", "Nottinghamshire", "PSNI", "Police Scotland", "South Wales", "South Yorkshire", "Staffordshire", "Suffolk", "Surrey", "Sussex", "Thames Valley", "Warwickshire", "West Mercia", "West Midlands", "West Yorkshire", "Wiltshire"]
    
    // Array containing the ISSI prefixes for each force
     let issiData = ["", "001", "002", "003", "004", "005", "006", "Civil Nuclear", "Cleveland", "Cumbria", "Derbyshire", "Devon & Cornwall", "Dorset", "Durham", "Dyfed Powys", "Essex", "Gloucestershire", "Greater Manchester", "Gwent", "Hampshire", "Hertfordshire", "Humberside", "Kent", "Lancashire", "Leicestershire", "Lincolnshire", "Merseyside", "Metropolitan Police", "MOD", "Norfolk", "North Yorkshire", "Northamptonshire", "Northumbria", "North Wales", "Nottinghamshire", "PSNI", "Police Scotland", "South Wales", "South Yorkshire", "Staffordshire", "Suffolk", "Surrey", "Sussex", "Thames Valley", "Warwickshire", "West Mercia", "West Midlands", "West Yorkshire", "Wiltshire"]
    
    // Array containing the geographic numbers for each force
    let phoneData = ["", "01275 818340", "01234 841212", "0800 405040", "01480 456111", "01244 350000", "020 7601 2222", "01946 773999", "01642 326326", "0300 1240111", "0345 1233333", "01392 420320", "01202 222222", "0345 6060365", "01267 222020", "01245 491491", "01452 726920", "0161 872 5050", "01633 838111", "01962 841534", "01707 354000", "01482 597600", "01622 690690", "01772 614444", "0116 222 2222", "01522 532222", "0151 709 6010", "020 7230 1212", "No National Number", "01953 424242", "01904 618691", "03000 111 222", "01661 872555", "0300 330 0101", "0115 967 0999", "028 9065 0222", "01786 289070", "01656 655555", "0114 2196905", "0300 123 4455", "01473 613500", "01483 571212", "01273 475432", "01865 841148", "01926 415000", "0300 333 3000", "0345 113 5000", "01924 375 222", "01380 826 614"]
    
    // Array containing the geographic numbers for each force
    let websiteData = ["", "http://www.avonandsomerset.police.uk/", "http://www.bedfordshire.police.uk/", "http://www.btp.police.uk/", "http://www.cambs.police.uk/", "https://www.police.uk/cheshire/", "https://www.police.uk/city-of-london/", "https://www.gov.uk/government/organisations/civil-nuclear-constabulary", "https://www.police.uk/cleveland/", "https://www.police.uk/cumbria/", "https://www.police.uk/derbyshire/", "https://www.police.uk/devon-and-cornwall/", "https://www.police.uk/dorset/", "https://www.police.uk/durham/", "https://www.police.uk/dyfed-powys/", "https://www.police.uk/essex/", "https://www.police.uk/gloucestershire/", "https://www.police.uk/greater-manchester/", "https://www.police.uk/gwent/", "https://www.police.uk/hampshire/", "https://www.police.uk/hertfordshire/", "https://www.police.uk/humberside/", "https://www.police.uk/kent/", "https://www.police.uk/lancashire/", "https://www.police.uk/leicestershire/", "https://www.police.uk/lincolnshire/", "https://www.police.uk/merseyside/", "https://www.police.uk/metropolitan/", "http://www.mod.police.uk/", "https://www.police.uk/norfolk/", "https://www.police.uk/north-yorkshire/", "https://www.police.uk/northamptonshire/", "https://www.police.uk/northumbria/", "https://www.police.uk/north-wales/", "https://www.police.uk/nottinghamshire/", "https://www.police.uk/northern-ireland/", "http://www.scotland.police.uk/", "https://www.police.uk/south-wales/", "https://www.police.uk/south-yorkshire/", "https://www.police.uk/staffordshire/", "https://www.police.uk/suffolk/", "https://www.police.uk/surrey/", "https://www.police.uk/sussex/", "https://www.police.uk/thames-valley/", "https://www.police.uk/warwickshire/", "https://www.police.uk/west-mercia/", "https://www.police.uk/west-midlands/", "https://www.police.uk/west-yorkshire/", "https://www.police.uk/wiltshire/"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

}

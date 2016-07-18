//
//  fireAmbViewController.swift
//  ForceIt!
//
//  Created by Steve on 18/07/2016.
//  Copyright © 2016 Steve Marriott. All rights reserved.
//

import UIKit

class fireAmbViewController: UIViewController {
    
    @IBOutlet weak var fireAmbLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    self.fireAmbLabel.text = "\(forceSelectedForTabView)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

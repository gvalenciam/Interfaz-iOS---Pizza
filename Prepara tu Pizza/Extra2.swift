//
//  Extra2.swift
//  Prepara tu Pizza
//
//  Created by Gerardo Valencia on 12/14/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import UIKit

var cadenaextrados = ""

class Extra2: UIViewController {

    @IBOutlet weak var LabelExtra2: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        
        cadenaextrados = LabelExtra2.text
        
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

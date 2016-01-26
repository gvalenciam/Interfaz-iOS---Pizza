//
//  FirstViewController.swift
//  Prepara tu Pizza
//
//  Created by Gerardo Valencia on 12/11/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import UIKit

var sizeuno = 0
var cadenauno = ""


class FirstViewController: UIViewController {
    
    
    
    @IBOutlet weak var SwitchGrande: UISwitch!
    
    @IBOutlet weak var SwitchMediano: UISwitch!
    
    @IBOutlet weak var SwitchPequeño: UISwitch!
    
    
    @IBOutlet weak var LabelGrande: UITextField!
    
    @IBOutlet weak var LabelMediano: UITextField!
    
    @IBOutlet weak var LabelPequeño: UITextField!
    
    @IBOutlet weak var Grande: UITableViewCell!

    @IBAction func SwitchoneChanged(sender: AnyObject) {
        
        if SwitchGrande.on{
            sizeuno = 1
            cadenauno = "Grande"
            SwitchMediano.setOn(false, animated: true)
            SwitchPequeño.setOn(false, animated: true)
            
            
        } else {
            sizeuno = 0
            
        }
    }
    @IBAction func SwitchtwoChanged(sender: AnyObject) {
        
        if SwitchMediano.on{
            sizeuno = 2
            cadenauno = "Mediano"
            SwitchGrande.setOn(false, animated: true)
            SwitchPequeño.setOn(false, animated: true)
            
            
        } else {
            sizeuno = 0
            
        }
    }
    @IBAction func SwitchthreeChanged(sender: AnyObject) {
        
        if SwitchPequeño.on{
            sizeuno = 3
            cadenauno = "Pequeño"
            SwitchMediano.setOn(false, animated: true)
            SwitchGrande.setOn(false, animated: true)
            
            
        } else {
            sizeuno = 0
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        a = ""
        b = ""
        c = ""
        d = ""
        e = ""
        f = ""
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


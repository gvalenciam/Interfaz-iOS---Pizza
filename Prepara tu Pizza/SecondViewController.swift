//
//  SecondViewController.swift
//  Prepara tu Pizza
//
//  Created by Gerardo Valencia on 12/11/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import UIKit

var sizedos = 0
var cadenados = ""

class SecondViewController: UIViewController {
    
    
    @IBAction func SwitchTresChanged(sender: AnyObject) {
        
        if SwitchGruesa.on{
            sizedos = 6
            cadenados = "Gruesa"
            SwitchCrujiente.setOn(false, animated: true)
            SwitchDelgada.setOn(false, animated: true)
            
        } else {
            sizedos = 0
            
        }
        
    }
    @IBAction func SwitchDosChanged(sender: AnyObject) {
        
        if SwitchCrujiente.on{
            sizedos = 5
            cadenados = "Crujiente"
            SwitchGruesa.setOn(false, animated: true)
            SwitchDelgada.setOn(false, animated: true)
        } else {
            sizedos = 0
            
        }
        
    }
    @IBAction func SwitchUnoChanged(sender: AnyObject) {
        
        if SwitchDelgada.on{
            sizedos = 4
            cadenados = "Delgada"
            SwitchCrujiente.setOn(false, animated: true)
            SwitchGruesa.setOn(false, animated: true)
        } else {
            sizedos = 0
            
        }
        
        
    }
    @IBOutlet weak var SwitchDelgada: UISwitch!
    
    @IBOutlet weak var SwitchCrujiente: UISwitch!
    
    @IBOutlet weak var SwitchGruesa: UISwitch!
    
    @IBOutlet weak var LabelDelgada: UITextField!
    
    @IBOutlet weak var LabelCrujiente: UITextField!
    
    @IBOutlet weak var LabelGruesa: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillDisappear(animated: Bool) {
        
        
    }

    
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


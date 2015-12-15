//
//  Start.swift
//  Prepara tu Pizza
//
//  Created by Gerardo Valencia on 12/14/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import UIKit



class Start: UIViewController {

    @IBOutlet weak var MensajeConfirmación: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
        
        if bandera == 1 {
            
            MensajeConfirmación.text =
            "Pedido Completado Gracias!!!"
        } else {
            MensajeConfirmación.text = ""
        }

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

//
//  VistaIngredientes.swift
//  Prepara tu Pizza
//
//  Created by Gerardo Valencia on 12/12/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {
    
    @IBAction func ButtonGo(sender: AnyObject) {
    }
    var a = ""
    var b = ""
    var c = ""
    var d = ""
    var e = ""
    var f = ""
    var estadouno = 0
    var estadocuatro = 0
    
    @IBOutlet weak var SwitchJamón: UISwitch!

    @IBOutlet weak var SwitchPepperoni: UISwitch!
    
    @IBOutlet weak var SwitchPavo: UISwitch!
    
    @IBOutlet weak var SwitchSalchicha: UISwitch!
   
    
    @IBOutlet weak var SwitchAceituna: UISwitch!
    
    @IBOutlet weak var SwitchCebolla: UISwitch!
    
    @IBOutlet weak var LabelJamón: UITextField!
    
    @IBOutlet weak var LabelPepperoni: UITextField!
    
    @IBOutlet weak var LabelPavo: UITextField!
    
    @IBOutlet weak var LabelSalchicha: UITextField!
    
    @IBOutlet weak var LabelAceituna: UITextField!
    
    @IBOutlet weak var LabelCebolla: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Switch1Changed(sender: AnyObject) {
        
        if SwitchJamón.on{
            estadocuatro = 11
            a = "Jamón"
        } else {
            estadocuatro = 0
        }
    }
    
    @IBAction func Switch2Changed(sender: AnyObject) {
        
        if SwitchPepperoni.on{
            estadocuatro = 12
            b = "Pepperoni"
        } else {
            estadocuatro = 0
        }
    }
    
    @IBAction func Switch3Changed(sender: AnyObject) {
        
        if SwitchPavo.on{
            estadocuatro = 13
            c = "Pavo"
        } else {
            estadocuatro = 0
        }
    }
    
    @IBAction func Switch4Changed(sender: AnyObject) {
        
        if SwitchSalchicha.on{
            estadocuatro = 14
            d = "Salchicha"
        } else {
            estadocuatro = 0
        }
    }
    
    @IBAction func Switch5Changed(sender: AnyObject) {
        
        if SwitchAceituna.on{
            estadocuatro = 15
            e = "Aceituna"
        } else {
            estadocuatro = 0
        }
    }
    @IBAction func Switch6Changed(sender: AnyObject) {
        
        if SwitchCebolla.on{
            estadocuatro = 16
            f = "Cebolla"
        } else {
            estadocuatro = 0
        }
    }
    
    
    
   


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        let tamaño : Int = sizeuno
        let labeltamaño = cadenauno
        let masa = sizedos
        let labelmasa = cadenados
        let queso = sizetres
        let labelqueso = cadenatres
        let vistaFINAL = segue.destinationViewController as! VistaFinal
        let ingredientes = estadocuatro
        var labelingredientes : String = a + "\n" + b + "\n" + c + "\n" + d + "\n" + e + "\n" + f
        
        labelingredientes = labelingredientes.stringByReplacingOccurrencesOfString(" ", withString:"")
        labelingredientes = labelingredientes.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
        
        let cadenaextra1 = cadenaextrauno
        let cadenaextra2 = cadenaextrados
        
        if tamaño == 0 || masa == 0 || queso == 0 || ingredientes == 0 {
            
            let alertController = UIAlertController(title: "La Pizza no está lista!!! ", message:
                "Selecciona una opción en cada pestaña (Extras son opcionales)", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
        } else {
            
            if cadenaextra1 != "" && cadenaextra2 == "" {
                
                vistaFINAL.cadenafinal = "Tamaño:\n\n" + labeltamaño + "\n\n" + "Masa:\n\n" + labelmasa + "\n\n" + "Queso:\n\n" + labelqueso + "\n\n" + "Ingredientes:\n\n" + labelingredientes + "\n\n" +  "Preferencia Extra" + "\n\n" +   cadenaextra1
                
            } else if cadenaextra1 == "" && cadenaextra2 != "" {
           
                vistaFINAL.cadenafinal = "Tamaño:\n\n" + labeltamaño + "\n\n" + "Masa:\n\n" + labelmasa + "\n\n" + "Queso:\n\n" + labelqueso + "\n\n" + "Ingredientes:\n\n" + labelingredientes + "\n\n" + "Dirección Delivery" + "\n\n" +   cadenaextra2
            } else if cadenaextra1 != "" && cadenaextra2 != ""{
                
                vistaFINAL.cadenafinal = "Tamaño:\n\n" + labeltamaño + "\n\n" + "Masa:\n\n" + labelmasa + "\n\n" + "Queso:\n\n" + labelqueso + "\n\n" + "Ingredientes:\n\n" + labelingredientes + "\n\n" + "Preferencia Extra" + "\n\n" +   cadenaextra1 + "\n\n" +  "Dirección Delivery" + "\n\n" +   cadenaextra2
                
            } else {
                
                vistaFINAL.cadenafinal = "Tamaño:\n\n" + labeltamaño + "\n\n" + "Masa:\n\n" + labelmasa + "\n\n" + "Queso:\n\n" + labelqueso + "\n\n" + "Ingredientes:\n\n" + labelingredientes
                
            }
            
        }

        
        
        
        
        
        
        
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

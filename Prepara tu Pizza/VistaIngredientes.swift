//
//  VistaIngredientes.swift
//  Prepara tu Pizza
//
//  Created by Gerardo Valencia on 12/12/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import UIKit

var a = ""
var b = ""
var c = ""
var d = ""
var e = ""
var f = ""

class VistaIngredientes: UIViewController {
    
    var contador : Int = 0
    
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
        self.contador = 0

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Switch1Changed(sender: AnyObject) {
        
        if SwitchJamón.on{
            estadocuatro = 11
            a = "Jamón"
            self.contador = self.contador + 1
             print(self.contador)
        } else {
            estadocuatro = 0
            a = ""
            self.contador = self.contador - 1
             print(self.contador)
        }
    }
    
    @IBAction func Switch2Changed(sender: AnyObject) {
        
        if SwitchPepperoni.on{
            estadocuatro = 12
            b = "Pepperoni"
            self.contador = self.contador + 1
             print(self.contador)
        } else {
            estadocuatro = 0
            b = ""
            self.contador = self.contador - 1
            print(self.contador)
        }
    }
    
    @IBAction func Switch3Changed(sender: AnyObject) {
        
        if SwitchPavo.on{
            estadocuatro = 13
            c = "Pavo"
            self.contador = self.contador + 1
             print(self.contador)
        } else {
            estadocuatro = 0
            c = ""
            self.contador = self.contador - 1
             print(self.contador)
        }
    }
    
    @IBAction func Switch4Changed(sender: AnyObject) {
        
        if SwitchSalchicha.on{
            estadocuatro = 14
            d = "Salchicha"
            self.contador = self.contador + 1
             print(self.contador)
        } else {
            estadocuatro = 0
            d = ""
            self.contador = self.contador - 1
             print(self.contador)
        }
    }
    
    @IBAction func Switch5Changed(sender: AnyObject) {
        
        if SwitchAceituna.on{
            estadocuatro = 15
            e = "Aceituna"
            self.contador = self.contador + 1
             print(self.contador)
        } else {
            estadocuatro = 0
            e = ""
            self.contador = self.contador - 1
             print(self.contador)
        }
    }
    @IBAction func Switch6Changed(sender: AnyObject) {
        
        if SwitchCebolla.on{
            estadocuatro = 16
            f = "Cebolla"
            self.contador = self.contador + 1
            print(self.contador)
        } else {
            estadocuatro = 0
            f = ""
            self.contador = self.contador - 1
             print(self.contador)
        }
    }
    
    
    
   


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        let labeltamaño = cadenauno
        let labelmasa = cadenados
        let labelqueso = cadenatres
        let vistaFINAL = segue.destinationViewController as! VistaFinal
        var labelingredientes : String = a + "\n" + b + "\n" + c + "\n" + d + "\n" + e + "\n" + f
        
        labelingredientes = labelingredientes.stringByReplacingOccurrencesOfString(" ", withString:"")
        labelingredientes = labelingredientes.stringByReplacingOccurrencesOfString("\n\n", withString:"\n")
        labelingredientes = labelingredientes.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
        
        let cadenaextra1 = cadenaextrauno
        let cadenaextra2 = cadenaextrados
        
        if (contador == 0) {
            
            let alertController = UIAlertController(title: "La Pizza no está lista!!! ", message:
                "Selecciona una opción en cada pestaña (Extras son opcionales)", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
        }else if (contador > 5){
            
            let alertController = UIAlertController(title: "La Pizza no está lista!!! ", message:
                "Selecciona como maximo 5 ingredientes", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }else{
            
            if cadenaextra1 != "" && cadenaextra2 == "" {
                
                vistaFINAL.cadenafinal = "Tamaño:\n\n" + labeltamaño + "\n\n" + "Masa:\n\n" + labelmasa + "\n\n" + "Queso:\n\n" + labelqueso + "\n\n" + "Ingredientes:\n\n" + labelingredientes + "\n\n" +  "Preferencia Extra" + "\n\n" +   cadenaextra1
                
            } else if cadenaextra1 == "" && cadenaextra2 != "" {
           
                vistaFINAL.cadenafinal = "Tamaño:\n\n" + labeltamaño + "\n\n" + "Masa:\n\n" + labelmasa + "\n\n" + "Queso:\n\n" + labelqueso + "\n\n" + "Ingredientes:\n\n" + labelingredientes + "\n\n" + "Dirección Delivery" + "\n\n" +   cadenaextra2
            } else if cadenaextra1 != "" && cadenaextra2 != ""{
                
                vistaFINAL.cadenafinal = "Tamaño:\n\n" + labeltamaño + "\n\n" + "Masa:\n\n" + labelmasa + "\n\n" + "Queso:\n\n" + labelqueso + "\n\n" + "Ingredientes:\n\n" + labelingredientes + "\n\n" + "Preferencia Extra:" + " " +   cadenaextra1 + "\n" +  "Dirección Delivery:" + " " +   cadenaextra2
                
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

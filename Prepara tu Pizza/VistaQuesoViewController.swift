//
//  VistaQuesoViewController.swift
//  Prepara tu Pizza
//
//  Created by Gerardo Valencia on 12/12/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import UIKit

var sizetres = 0
var cadenatres = ""

class VistaQuesoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    

    @IBOutlet weak var Picker: UIPickerView!
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.Picker.delegate = self
        
        
        // Do any additional setup after loading the view.
        
        pickerData = ["Mozarela", "Cheddar", "Parmesano", "Sin Queso"]
    }
    
    override func viewWillDisappear(animated: Bool) {
       
        cadenatres = pickerData[Picker.selectedRowInComponent(0)]
        
        if cadenatres == "Mozarela"{
            
            sizetres = 7
        }
        
        if cadenatres == "Cheddar"{
            
            sizetres = 8
        }
        
        if cadenatres == "Parmesano"{
            
            sizetres = 9
        }
        
        if cadenatres == "Sin Queso"{
            
            sizetres = 10
        }
        

    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
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

//
//  ViewController.swift
//  ThirdProject
//
//  Created by Alhasnaa on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var enterTemp: UILabel!
    
 
    @IBOutlet weak var textfield: UITextField!
    
    
    @IBAction func fahrenhiet(_ sender: Any) {
        
        var tempCeleuis=textfield.text
        var temp  = Int(tempCeleuis ?? "") ?? 0
        if( temp < 100){
            lebal.text=String((temp * (9/5)) + 32) + "F"
        }else{
            lebal.text="the tempreture should be  less than 100"
        }
    }
    
    
    @IBAction func kelvinAction(_ sender: Any) {
        var tempKelivn = textfield.text
         var temp  = Int(tempKelivn  ?? "") ?? 0
         if( temp < 100){
             var temp2 = Double( temp ) + 273.1518
            
             lebal.text=String( temp2)+"K"
         }else{
             lebal.text="the tempreture should be  less than 100"
         }
    }
    
    @IBOutlet weak var lebal: UILabel!
}


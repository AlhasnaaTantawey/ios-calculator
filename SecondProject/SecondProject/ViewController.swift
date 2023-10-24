//
//  ViewController.swift
//  SecondProject
//
//  Created by Alhasnaa on 22/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text=""
    }

    @IBOutlet weak var enterRate: UILabel!
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func action(_ sender: Any) {
        
        var heartRate  = textfield.text!
     
        switch ( Int( heartRate) ?? 0 ){
        case 0...99 :
            
            result.text="you should enter the rate from 100"
        case 100...120 :
            
            result.text="you are in the very light zone.Activity in this zone  helps with recovery"
        case 121...140  :
            
            result.text="you are in the light zone.Activity in this zone  helps improve basic edurance and fat burning"
        case 141...160 :
            
            result.text="you are in the moderate zone.Activity in this zone  helps improve basic aerobic fitness"
        case 161...180 :
            
            result.text="you are in the hard zone.Activity in this zone  increases maxium performance capcity  for shorter seasons"
        case 181...200 :
            
            result.text="you are in the maxmuim zone.Activity in this zone  helps fit athletic develop speed "
            
        default:
            
            result.text="you are warning zone.you should slow down"
            
        }
    }
}


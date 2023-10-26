//
//  ViewController.swift
//  Calculator
//
//  Created by Alhasnaa on 25/10/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lebal: UILabel!
    
    var num1 :Int = 0
    var num2 :Int = 0
    var operation :String = ""
    var result :String = ""
    var currentNymber :String = ""
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func sixBtn(_ sender: Any) {
        currentNymber = "\(currentNymber )6"
      
        lebal.text = currentNymber
    }
    
    @IBAction func clearBtn(_ sender: Any) {
        lebal.text=""
    }
    
    
    @IBAction func minsPlusBtn(_ sender: Any) {
     num1 *= -1
    }
    
    
    @IBAction func reminder(_ sender: Any) {
        num1 = ( currentNymber as NSString) .integerValue
        currentNymber = ""
        operation = "%"
        lebal.text = operation
    }
   
    
    
    @IBAction func plusBtn(_ sender: Any) {
        
        num1 = ( currentNymber as NSString) .integerValue
        currentNymber = ""
        operation = "+"
        lebal.text = operation
    }
    

    @IBAction func sevenBtn(_ sender: Any) {
        currentNymber = "\(currentNymber )7"
      
        lebal.text = currentNymber
    }
    
    
    @IBAction func eightBtn(_ sender: Any) {
       
        currentNymber = "\(currentNymber )8"
      
        lebal.text = currentNymber
    }
    
    
    @IBAction func nineBtn(_ sender: Any) {
        currentNymber = "\(currentNymber )9"
      
        lebal.text = currentNymber
    }
    
    
    @IBAction func subBtn(_ sender: Any) {
        num1 = ( currentNymber as NSString) .integerValue
        currentNymber = ""
        operation = "-"
        lebal.text = operation
        
    }
    
    
    @IBAction func fourBtn(_ sender: Any) {
        currentNymber = "\(currentNymber )4"
      
        lebal.text = currentNymber
    }
    
    
    @IBAction func fiveBtn(_ sender: Any) {
        currentNymber = "\(currentNymber )5"
      
        lebal.text = currentNymber
    }
    
    @IBAction func divisionBtn(_ sender: Any) {
        num1 = ( currentNymber as NSString) .integerValue
        currentNymber = ""
        operation = "÷"
        lebal.text = operation
        
    }
    
    @IBAction func oneBtn(_ sender: Any) {
        currentNymber = "\(currentNymber )1"
      
        lebal.text = currentNymber
    }
    
    @IBAction func twoBtn(_ sender: Any) {
        currentNymber = "\(currentNymber )2"
      
        lebal.text = currentNymber
    }
    
    
    @IBAction func threeBtn(_ sender: Any) {
        currentNymber = "\(currentNymber )3"
      
        lebal.text = currentNymber
    }
    
    @IBAction func multBtn(_ sender: Any) {
        num1 = ( currentNymber as NSString) .integerValue
        currentNymber = ""
        operation = "*"
        lebal.text = operation
    }
    
    
    @IBAction func zeroBtn(_ sender: Any) {
        currentNymber = "\(currentNymber )0"
      
        lebal.text = currentNymber
    }
    
    
    @IBAction func dotButton(_ sender: Any) {
        currentNymber = "\(currentNymber )."
      
        lebal.text = currentNymber
    }
    
    
    @IBAction func equalBtn(_ sender: Any) {
      
        num2 = ( currentNymber as NSString) .integerValue
        currentNymber = ""
        
        switch (operation) {
            
        case "+" :
            result = String(num1+num2)
        case "-" :
            result = String(num1-num2)
        case "÷" :
            result = String(num1/num2)
        case "*" :
            result = String(num1*num2)
        default :
            result = String(num1%num2)
            
        }
        lebal.text="\(num1)\(operation)\(num2)=\(result)"
        
        
    }
}


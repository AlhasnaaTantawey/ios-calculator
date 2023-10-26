//
//  ViewController.swift
//  FirstProject2
//
//  Created by Alhasnaa on 26/10/2023.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfiled: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text=""
    }

    
    @IBAction func employrrBtn(_ sender: Any) {
        
        
        let salary = Int(textfiled.text ?? "")
        
        let emp = Employee()
        resultLabel.text = " Employee salary = " + String( emp.getSalary(salary: salary ?? 0))
        
    }
    
    
    @IBAction func managerBtn(_ sender: Any) {
        
        let salary = Int(textfiled.text ?? "")
        
        let man = Manager()
        
        resultLabel.text = " Manager salary = " + String( man.getSalary(salary: salary ?? 0))
      
    }
    
    

}

class Person{
    

    func getSalary( salary : Int) -> Int {
         return salary
    }
}


class Employee : Person
{
    override func getSalary( salary : Int) -> Int {
    
         return salary * 2
    }
}



class Manager : Person
{
    override func getSalary( salary : Int) -> Int {
       
         return  salary * 5
    }
}


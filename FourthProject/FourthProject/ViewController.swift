//
//  ViewController.swift
//  FourthProject
//
//  Created by Alhasnaa on 24/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
//    let image2 :UIImage? = UIImage(named: "photo1")
    
   // imageView.image=image
    
    var currenTIndex = 0
    
    var decr = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"
    
    var Places : [Place] = [
        Place(image: "photo7", description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.") ,
        
        Place(image: "photo6", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia"),
        
        Place(image: "photo3", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book") ,
        
        Place(image: "photo5", description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.")]
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    @IBOutlet weak var labelDescrption: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

     setUpUi()
        
        
    }
    
    
    func setUpUi(){
    
        imageView.image = UIImage(named: Places[ currenTIndex].image)
        
         labelDescrption.text = Places[currenTIndex].description
    }

   
    
    @IBAction func previousAction(_ sender: Any) {
        currenTIndex = ( currenTIndex - 1 + Places.count) % Places.count
        setUpUi()
    }
    
    
   

    
    @IBAction func NextAction(_ sender: Any) {
        currenTIndex = (currenTIndex+1) % Places.count
        setUpUi()
    }
}

class Place {
    let image :String
    let description :String
    
    init(image: String, description: String) {
        self.image = image
        self.description = description
    }
    
    
}


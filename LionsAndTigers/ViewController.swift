//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Rosemarie Day on 5/29/15.
//  Copyright (c) 2015 rjd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // variables
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    var tigerArray:Array<Tiger> = [] // empty array that holds tiger instaces
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // sets up the Tiger struct
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.age = 3
        myTiger.breed = "Bengal"
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        tigerArray.append(myTiger) // adds the first tiger to the array
        
        var secondTiger = Tiger()
        secondTiger.name = "Leo"
        secondTiger.age = 4
        secondTiger.breed = "Indochinese"
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Rider"
        thirdTiger.age = 3
        thirdTiger.breed = "Malayan"
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        var fourTiger = Tiger()
        fourTiger.name = "James"
        fourTiger.age = 5
        fourTiger.breed = "Siberian"
        fourTiger.image = UIImage(named: "SiberianTiger.jpg")
        tigerArray += [secondTiger, thirdTiger, fourTiger] // adds the rest of the tigers to the array
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // next bar button on the toolbar has been pressed 
    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        
        let randIndex = Int(arc4random_uniform(UInt32(tigerArray.count))) // generates a random number within the number of elements in array
        let tiger = tigerArray[randIndex]                                 // gets the tiger at that index
        
        // uses the values of the Tiger struct to change the UI
        imageView.image = tiger.image
        nameLabel.text = tiger.name
        ageLabel.text = "\(tiger.age)"
        breedLabel.text = tiger.breed
        
    }
    
    
}


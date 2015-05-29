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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // sets up the Tiger struct
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.age = 3
        myTiger.breed = "Bengal"
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
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
        
        // uses the values of the Tiger struct to change the UI 
        imageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // next bar button on the toolbar has been pressed 
    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
    }
    
    
}


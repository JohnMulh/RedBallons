//
//  ViewController.swift
//  RedBallons
//
//  Created by John Mulholland on 16/11/2014.
//  Copyright (c) 2014 John Mulholland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

// set up field to receive the balloons number
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var LabelName: UILabel!
// setup array to hold all balloon instances
    
    var myBalloons:[Balloon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
// set up each balloon instance in myBalloons
  
        for currentIndex; currentIndex <= 99; currentIndex++
        {
/* create an instance of Balloon and insert number using currentIndex
and get one of four random images by calling the assignImage function
which will return one */
        var aBalloon = Balloon()
        var gotImage = aBalloon.assignImage()
        aBalloon.image = UIImage(named: "\(gotImage)")
        aBalloon.number = currentIndex
// add the instance to the myBalloons array
            myBalloons.append(aBalloon)}

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBallonButtonPressed(sender: UIBarButtonItem) {
// generate a random number from the count of items in the myBalloons array check that it is not the same as the previously generated random number and if so get another random number
        
        var randomIndex: Int
        
        do {
            randomIndex = Int(arc4random_uniform(UInt32(myBalloons.count)))
        } while self.currentIndex == randomIndex
        
        self.currentIndex = randomIndex
        
        let balloon = myBalloons[self.currentIndex]
        
        self.LabelName.text = " The number of this item is \(balloon.number)"
        self.myImageView.image = balloon.image
    
    }

}


//
//  ViewController.swift
//  RedBallons
//
//  Created by John Mulholland on 16/11/2014.
//  Copyright (c) 2014 John Mulholland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

// set up fields to receive the balloons number and the image to be used
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var LabelName: UILabel!
    
// setup array to hold all Balloon instances
    
    var myBalloons:[Balloon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // populate the array
        
        self.populateArray()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBallonButtonPressed(sender: UIBarButtonItem) {
// generate a random number from the count of items in the myBalloons array check that it is not the same as the previously generated random number and if so get another random number
// use that to display the appropriate item from the array
        
        var randomIndex: Int
        
        do {
            randomIndex = Int(arc4random_uniform(UInt32(myBalloons.count)))
        } while self.currentIndex == randomIndex
        
        self.currentIndex = randomIndex
        
        self.LabelName.text = " The number is: \(myBalloons[self.currentIndex].number)"
        self.myImageView.image = myBalloons[self.currentIndex].image
    
    }
    
    func populateArray ()
    {
// set up each balloon instance in myBalloons
        
        for currentIndex; currentIndex <= 99; currentIndex++
        {
/* create an instance of Balloon and insert number using currentIndex
    then get one of four images by calling the assignImage function
    which will return one randomly */
            
            var aBalloon = Balloon()
            aBalloon.image = UIImage(named: "\(aBalloon.assignImage())")
            aBalloon.number = currentIndex
            
// add the instance to the myBalloons array
            
            myBalloons.append(aBalloon)}

    }

}


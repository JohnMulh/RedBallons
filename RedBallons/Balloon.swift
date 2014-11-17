//
//  Balloon.swift
//  RedBallons
//
//  Created by John Mulholland on 16/11/2014.
//  Copyright (c) 2014 John Mulholland. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    var image = UIImage(named: "")
    var number = 0
    
    func assignImage () -> String
    {
        var randomNumber = Int(arc4random_uniform(UInt32(4)))
        var randomImage: String
        switch randomNumber {
        case 1:
            randomImage = "RedBalloon1.jpg"
        case 2:
            randomImage = "RedBalloon2.jpg"
        case 3:
            randomImage = "RedBalloon3.jpg"
        default:
            randomImage = "RedBalloon4.jpg"
        }
        return randomImage
    }
    
}

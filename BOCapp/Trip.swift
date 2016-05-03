//
//  Trip.swift
//  BOCapp
//
//  Created by Andrew Murowchick on 4/26/16.
//  Copyright © 2016 Alexander Shi. All rights reserved.
//

import Foundation
import UIKit

class Trip {
    
    // MARK: Properties
    
    var title: String
    var imageName: String
    var image: UIImage?
    
    var leaderName: String
    var leaderImageName: String
    var leaderImage: UIImage?
    var leaderDescription: String
    
    var description: String
    
    
    // MARK: Initialization
    
    init?(title: String, imageName: String, leaderName: String, leaderImageName: String, leaderDescription: String, description: String){
        
        self.title = title
        self.imageName = imageName
        self.image = UIImage(named: imageName)
        
        self.leaderName = leaderName
        self.leaderImageName = leaderImageName
        self.leaderImage = UIImage(named: leaderImageName)
        self.leaderDescription = leaderDescription
        
        self.description = description
        
        
        
    }
    
    
}
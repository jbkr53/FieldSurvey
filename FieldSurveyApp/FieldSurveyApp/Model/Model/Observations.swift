//
//  Observations.swift
//  FieldSurveyApp
//
//  Created by James Kirkland on 11/21/19.
//  Copyright © 2019 James Kirkland. All rights reserved.
//

import UIKit

enum Classification: String {
    case Amphibian
    case Bird
    case Fish
    case Insect
    case Mammal
    case Plant
    case Reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
    
    
}

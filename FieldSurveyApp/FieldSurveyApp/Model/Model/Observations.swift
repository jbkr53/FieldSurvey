//
//  Observations.swift
//  FieldSurveyApp
//
//  Created by James Kirkland on 11/21/19.
//  Copyright © 2019 James Kirkland. All rights reserved.
//

import UIKit

enum Classification: String, Codable {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
    
    
}

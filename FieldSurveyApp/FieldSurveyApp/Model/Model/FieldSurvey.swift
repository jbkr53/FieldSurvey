//
//  FieldSurvey.swift
//  FieldSurveyApp
//
//  Created by James Kirkland on 11/21/19.
//  Copyright © 2019 James Kirkland. All rights reserved.
//

import Foundation

struct SurveySet: Codable {
    
    var status: String
    var observations: [ObservationItem]
   
    
  enum CodingKeys: String, CodingKey {
        case status
        case observations
        
        
        
    }
}

struct ObservationItem: Codable {
        
        
        var classification: String
        var title: String
        var description: String
        var date: Date
        
    enum Classification:String, Codable {
         
        case amphibian
        case bird
        case fish
        case insect
        case mammal
        case plant
        case reptile
    }
}

    

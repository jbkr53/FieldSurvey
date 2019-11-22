//
//  JSONLoader.swift
//  FieldSurveyApp
//
//  Created by James Kirkland on 11/22/19.
//  Copyright © 2019 James Kirkland. All rights reserved.
//

import Foundation

class fieldObservatonJSONLoader{
    
    class func load(fileName: String) -> [FieldSurvey]{
        var observations = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = FieldObservationJSONParser.parse(data)
        }
        return observations
    }
    
}

//
//  JSONLoader.swift
//  FieldSurveyApp
//
//  Created by James Kirkland on 11/22/19.
//  Copyright © 2019 James Kirkland. All rights reserved.
//

import Foundation

class SurveySetLoader {
    
    class func load(jsonFileName: String) -> SurveySet? {
        var surveySet: SurveySet?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            surveySet = try? jsonDecoder.decode(SurveySet.self, from: jsonData)
        }
        
        return surveySet
    }
}


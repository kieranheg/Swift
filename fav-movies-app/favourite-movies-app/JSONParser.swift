//
//  JSONParser.swift
//  favourite-movies-app
//
//  Created by localadmin on 10/17/17.
//  Copyright © 2017 localadmin. All rights reserved.
//

import Foundation

class JSONParser {
    static func parse (data: Data) -> [String: AnyObject]? {
        let options = JSONSerialization.ReadingOptions()
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: options)
            as? [String: AnyObject]
            
            return json!
        } catch (let parseError) {
            print("There was an error parsing the JSON: \"\(parseError.localizedDescription)\"" )
        }
        return nil
    }
}

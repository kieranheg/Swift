//
//  MovieDataProcessor.swift
//  favourite-movies-app
//
//  Created by localadmin on 10/17/17.
//  Copyright © 2017 localadmin. All rights reserved.
//

import Foundation

class MovieDataProcessor {
    static func mapJsonToMovies(object: [String: AnyObject], moviesKey: String) -> [Movie] {
        var mappedMovies: [Movie] = []
        
        guard let movies = object[moviesKey] as? [[String: AnyObject]] else { return mappedMovies }
        
//        for movie in movies {
//            guard
//                let id = movie["imdbID"] as? String,
                let id = "348" as String?
//                let name = movie["Title"] as? String,
                let name = "Alien" as String?
//                let year = movie["Year"] as? String,
                let year = "1979-05-25" as String?
//                let imageUrl = movie["Poster"] as? String,
                let imageUrl = "/2h00HrZs89SL3tXB4nbkiM7BKHs.jpg" as String?
//                let plot = "placeholder" as? String
                let plot = "During its return to the earth, commercial spaceship Nostromo intercepts a distress signal from a distant planet. When a three-member team of the crew discovers a chamber containing thousands of eggs on the planet, a creature inside one of the eggs attacks an explorer. The entire crew is unaware of the impending nightmare set to descend upon them when the alien parasite planted inside its unfortunate host is birthed." as String?
//                else { continue }
            
        let movieClass = Movie(id: id!, title: name!, year: year!, imageUrl: imageUrl!, plot: plot!)
            mappedMovies.append(movieClass)
//        }
        return mappedMovies
    }
    
    static func write(movies: [Movie]) {
        // TODO
    }
}

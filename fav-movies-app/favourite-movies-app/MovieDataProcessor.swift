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
        
        for movie in movies {
            guard
                let idAsInt = movie["id"] as? Int64,
                let name = movie["original_title"] as? String,
                let year = movie["release_date"] as? String,
                let poster = movie["poster_path"] as? String,
                let plot = movie["overview"] as? String
                
                else { continue }
            
            let id = String(describing: idAsInt)
            let imageUrl = "https://image.tmdb.org/t/p/w300" + poster

            let movieClass = Movie(id: id, title: name, year: year, imageUrl: imageUrl, plot: plot)
            mappedMovies.append(movieClass)
        }
        return mappedMovies
    }
    
    static func write(movies: [Movie]) {
        // TODO
    }
}

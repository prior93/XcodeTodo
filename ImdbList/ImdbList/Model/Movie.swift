//
//  Movie.swift
//  ImdbList
//
//  Created by parashar.r.adhikary on 03/02/2021.
//

import Foundation
struct Movie {
    let actor:String //t
    let film : String  //a
    let rating : String  //c
    
    static func createMovie()->[Movie]{
        
        
        var movies:[Movie] = []
        let actors = DataManager.shared.actor
        let films = DataManager.shared.film
        let ratings = DataManager.shared.rating
        
        
        for index in 0..<actors.count {
            let movie = Movie(actor: actors[index], film: films[index], rating: ratings[index] )
            movies.append(movie)
        }
        return movies    }
  
}

//
//  Movie.swift
//  MyMoviesApp
//
//  Created by Jose Martins on 12/10/20.
//

import Foundation

class Movie {
    var title: String!
    var description: String!
    var image: String!
    
    init(title: String, description: String, image: String) {
        self.title = title
        self.description = description
        self.image = image
    }
}

//
//  MovieService.swift
//  MyMoviesApp
//
//  Created by Jose Martins on 12/10/20.
//

import Foundation

class MovieService {
    static let instance = MovieService()
    
    private init() {}

    func getMovies() -> [Movie] {
        return []
    }
}

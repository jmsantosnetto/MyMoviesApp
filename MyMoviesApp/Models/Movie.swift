//
//  Movie.swift
//  MyMoviesApp
//
//  Created by Jose Martins on 12/10/20.
//

import Foundation

enum PosterImageSizes: String {
    case w92 = "w92"
    case w154 = "w154"
    case w185 = "w185"
    case w342 = "w342"
    case w500 = "w500"
    case w780 = "w780"
    case original = "original"
}

enum BackDropImageSizes: String {
    case w300 = "w300"
    case w780 = "w780"
    case w1280 = "w1280"
    case original = "original"
}

class Movie: Codable{
    var popularity: String
    var vote_count: Int
    var video: Bool
    var poster_path: String
    var id: Int
    var adult: Bool
    var backdrop_path: String
    var original_language: String
    var original_title: String
    var genre_ids: [Int]
    var title: String
    var vote_average: Double
    var overview: String
    var release_date: String
    
    private var imagesBasePath = "https://image.tmdb.org/t/p"
    
    func getPosterImageUrl(ofSize size: String) -> String {
        return "\(imagesBasePath)/\(size)/\(poster_path)"
    }
    
    func getBackdropImageUrl(ofSize size: String) -> String {
        return "\(imagesBasePath)/\(size)/\(backdrop_path)"
    }
}



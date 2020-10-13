//
//  MovieService.swift
//  MyMoviesApp
//
//  Created by Jose Martins on 12/10/20.
//

import Foundation

class MovieService {
    static let instance = MovieService()
    
    private let movies: [Movie] = [
        Movie(title: "007 - Spectre", description: "Filme sobre 007", image: "filme1"),
        Movie(title: "Star Wars", description: "Uma guerra no espaço", image: "filme2"),
        Movie(title: "impacto Mortal", description: "Segure-se firme", image: "filme3"),
        Movie(title: "Deadpool", description: "Comédia com luta", image: "filme4"),
        Movie(title: "O Regresso", description: "Cenas impactantes", image: "filme5"),
        Movie(title: "A Herdeira", description: "Muito Macabro", image: "filme6"),
        Movie(title: "Caçadores de emoçåo", description: "Emoçåo do inicio ao fim", image: "filme7"),
        Movie(title: "Regresso do mal", description: "Cee ta doido", image: "filme8"),
        Movie(title: "Tarzan", description: "Pulando de galho em galho", image: "filme9"),
        Movie(title: "Hardcore", description: "Adrenalina pura!", image: "filme10"),
    ]
    
    func getMovies() -> [Movie] {
        return self.movies
    }
}

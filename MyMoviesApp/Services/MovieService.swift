//
//  MovieService.swift
//  MyMoviesApp
//
//  Created by Jose Martins on 12/10/20.
//

import Foundation

enum MovieRequestError {
    case url
    case taskError(error: Error)
    case noResponse
    case noData
    case responseStatusCode(code: Int)
    case invalidJSON
}

class MovieService {
    private init() {}
    static let instance = MovieService()
    private let basePath = "https://api.themoviedb.org/3/movie/top_rated?api_key=e1336b79ce644f3ffcabaa13cc750957&language=pt-BR&page=1"
    
    private let configuration: URLSessionConfiguration = {
        let config = URLSessionConfiguration.default
        config.httpAdditionalHeaders = ["Content-Type": "application/json"]
        config.timeoutIntervalForRequest = 30
        config.httpMaximumConnectionsPerHost = 10
        return config
    }()
    
    private lazy var session = URLSession(configuration: configuration)

    func getTopRatedMovies(onComplete: @escaping ([Movie]) -> Void, onError: @escaping (MovieRequestError) -> Void) {
        guard let url = URL(string: basePath) else {
            onError(.url)
            return
        }
        
        let dataTask = session.dataTask(with: url) { (data, response, error) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onError(.noResponse)
                    return
                }
                
                if response.statusCode == 200 {
                    guard let data = data else {
                        onError(.noData)
                        return
                    }
                    
                    do {
                        let movies = try JSONDecoder().decode([Movie].self, from: data)
                        
                        for movie in movies {
                            print(movie.title)
                        }
                        
                        onComplete(movies)
                        
                    } catch {
                        onError(.invalidJSON)
                    }
                } else {
                    onError(.responseStatusCode(code: response.statusCode))
                }
            } else {
                onError(.taskError(error: error!))
            }
        }
        
        dataTask.resume()
    }
}

//
//  MoviesViewController.swift
//  MyMoviesApp
//
//  Created by Jose Martins on 12/10/20.
//

import UIKit

class MoviesViewController: UITableViewController {
    
    let movieCellReusableId = "movieCell"
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getMovies()
        tableView.layoutIfNeeded()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.movieCellReusableId) as! MovieCell
        
        cell.loadUI(movie: movies[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        self.viewDetails(movie: self.movies[indexPath.row])
    }
    
    func viewDetails(movie: Movie) {
        let detailViewController = storyboard?.instantiateViewController(identifier: "MovieDetail") as! MovieDetailViewController
        
        detailViewController.modalPresentationStyle = .fullScreen
        detailViewController.movie = movie
        
        self.present(detailViewController, animated: true, completion: nil)
    }
    
    func getMovies() {
        self.movies = MovieService.instance.getMovies()
    }
    
}

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
    private let service = MovieService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getMovies()
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.movieCellReusableId) as! MovieCell
        
        cell.prepare(with: movies[indexPath.row])
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let movieDetailsViewController = segue.destination as! MovieDetailViewController
        let movie = movies[tableView.indexPathForSelectedRow!.row]
        movieDetailsViewController.movie = movie
    }
    
    func getMovies() {
        self.movies = service.getMovies()
    }
    
}

//
//  MoviesViewController.swift
//  MyMoviesApp
//
//  Created by Jose Martins on 12/10/20.
//

import UIKit

class MoviesViewController: UITableViewController {
    var movies: [Movie] = []
    private let service = MovieService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareView()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as! MovieCell
        
        cell.prepareCell(with: movies[indexPath.row])
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let movieDetailsViewController = segue.destination as! MovieDetailViewController
        let movie = movies[tableView.indexPathForSelectedRow!.row]
        movieDetailsViewController.movie = movie
    }
    
    func prepareView() {
        movies = service.getMovies()
        tableView.reloadData()
    }
    
}

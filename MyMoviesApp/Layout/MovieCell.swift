//
//  MovieCell.swift
//  MyMoviesApp
//
//  Created by Jose Martins on 12/10/20.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func loadUI(movie: Movie) {
        self.titleLabel.text = movie.title
        self.descriptionLabel.text = movie.description
        self.movieImageView.image = UIImage(named: movie.image)
        
        self.configureMovieImageView()
    }
    
    
    func configureMovieImageView() {
        self.movieImageView.layer.cornerRadius = self.movieImageView.layer.bounds.height / 2
        self.movieImageView.clipsToBounds = true
    }
    
}

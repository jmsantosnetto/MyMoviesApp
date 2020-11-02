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
    
    func prepareCell(with movie: Movie) {
        titleLabel.text = movie.title
        descriptionLabel.text = movie.overview
        movieImageView.image = UIImage(named: movie.getPosterImageUrl(ofSize: PosterImageSizes.w342.rawValue))
        
        configureMovieImageView()
    }
    
    func configureMovieImageView() {
        movieImageView.layer.cornerRadius = self.movieImageView.layer.bounds.height / 2
        movieImageView.clipsToBounds = true
    }
    
}

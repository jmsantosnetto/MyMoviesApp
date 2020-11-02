//
//  MovieDetailViewController.swift
//  MyMoviesApp
//
//  Created by Jose Martins on 12/10/20.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    var movie: Movie!
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
    }
    
    func prepareView () {
        title = movie.title
        movieImageView.image = UIImage(named: movie.getPosterImageUrl(ofSize: PosterImageSizes.w185.rawValue))
        descriptionLabel.text = movie.overview
    }
}

//
//  MovieDetailViewController.swift
//  MyMoviesApp
//
//  Created by Jose Martins on 12/10/20.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(movie?.title ?? "Veio nada irmao")
    }
    
}

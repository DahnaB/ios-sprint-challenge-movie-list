//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Dahna on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var movies = [Movie(name: "The Lion King")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self as? UITableViewDelegate
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
            fatalError("Cell is  not a MovieTableViewCell")
        }
        
        cell.delegate = self
        cell.movie = movies[indexPath.row]
        
        return cell
    }
    


    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowAddMovieSegue" {
            guard let AddMovieVC = segue.destination as? AddMovieViewController else { return }
            AddMovieVC.delegate = self
        }
    }
}

extension MovieListViewController: AddMovieDelegate, UpdateMovieStatusDelegate{
    func updateMovieStatus(cell: MovieTableViewCell) {
        print("update Movie Status")
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        var movie = movies[indexPath.row]
        movie.seen = !movie.seen
        movies[indexPath.row] = movie
        tableView.reloadData()
    }
    
    func movieAdded(_movie: Movie) {
        movies.append(_movie)
        tableView.reloadData()
    }
    
    
}

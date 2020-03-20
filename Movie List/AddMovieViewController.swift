//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Dahna on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    
    func movieAdded(_movie: Movie)
}


class AddMovieViewController: UIViewController {
    
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var enterMovieTextField: UITextField!
    
    @IBAction func addMovieTapped(_ sender: UIButton) {
        
        guard let movieName = enterMovieTextField.text else { return }
        var newMovies: [String] = []
        if let movieName = enterMovieTextField.text,
            !movieName.isEmpty {
            newMovies.append(movieName)
        }
        let movie = Movie(name: movieName)
        delegate?.movieAdded(_movie: movie)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

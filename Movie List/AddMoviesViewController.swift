//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Dahna on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController {
    
    @IBOutlet weak var addMoviesTextField: UITextField!
    
    @IBAction func addMovieSave(_ sender: UIButton) {
        
        guard let movieText = addMoviesTextField.text else { return }
        
        let newMovie = Movie.init(title: movieText)
        
        
        
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

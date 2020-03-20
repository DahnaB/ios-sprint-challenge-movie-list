//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Dahna on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol UpdateMovieStatusDelegate {
    func updateMovieStatus(cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
   
    
    @IBOutlet weak var moviesLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: UpdateMovieStatusDelegate?
    
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        delegate?.updateMovieStatus(cell: self)
    }
    
    private func updateViews() {
        guard let unwrappedMovie = movie else { return }
        moviesLabel.text = unwrappedMovie.name
        if unwrappedMovie.seen {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//
  
        
        
        

        
      
        
      
    
    

}

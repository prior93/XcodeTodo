//
//  DetailViewController.swift
//  ImdbList
//
//  Created by parashar.r.adhikary on 03/02/2021.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var trackImageView: UIImageView!
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    var movie : Movie!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if movie != nil{
            
                trackImageView.image = UIImage(named: movie.rating)
                trackNameLabel.text = movie.actor + " - " + movie.film
                trackNameLabel.numberOfLines = 0
            
        }
    }

}

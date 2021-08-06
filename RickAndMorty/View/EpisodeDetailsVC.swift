//
//  EpisodeDetailsVC.swift
//  RickAndMorty
//
//  Created by Eray Erman on 5.08.2021.
//

import UIKit

class EpisodeDetailsVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var air_dateLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    var viewModel : EpisodeDetailsVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    func setupUI(){
        
        self.nameLabel.text = viewModel.results.name
        self.air_dateLabel.text = viewModel.results.air_date
        self.episodeLabel.text = viewModel.results.episode
    }

    

}

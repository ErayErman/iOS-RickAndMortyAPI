//
//  CharacterDetailsVC.swift
//  RickAndMorty
//
//  Created by Eray Erman on 5.08.2021.
//

import UIKit


class CharacterDetailsVC: UIViewController {
        
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    var viewModel: CharacterDetailsVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI(){
        
        self.genderLabel.text = viewModel.results.gender
        self.idLabel.text = String(viewModel.results.id!)
        self.nameLabel.text = viewModel.results.name
        self.statusLabel.text = viewModel.results.status
        self.speciesLabel.text = viewModel.results.species
        let urlString: String = viewModel.results.image!
        let url = URL(string: urlString)!
        self.imageView.af.setImage(withURL: url)
        
        
    }
}

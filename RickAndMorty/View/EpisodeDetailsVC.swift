//
//  EpisodeDetailsVC.swift
//  RickAndMorty
//
//  Created by Eray Erman on 5.08.2021.
//

import UIKit
import Alamofire
import AlamofireImage

class EpisodeDetailsVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var air_dateLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    var viewModel : EpisodeDetailsVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    func setupUI(){
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.nameLabel.text = viewModel.results.name
        self.air_dateLabel.text = viewModel.results.air_date
        self.episodeLabel.text = viewModel.results.episode
    }

    

}
extension EpisodeDetailsVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.results.characters!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data = viewModel.results
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell3", for: indexPath) as! DetailsCollectionViewCell
        cell.setupUI(data.characters![indexPath.row])
        return cell
            
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           
        let width = self.view.frame.width / 3
        let height = self.view.frame.height / 6
           
        return CGSize(width: width, height: height)
       }
    
    
    
}

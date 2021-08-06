//
//  LocationDetailsVC.swift
//  RickAndMorty
//
//  Created by Eray Erman on 5.08.2021.
//

import UIKit

class LocationDetailsVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var dimensionLabel: UILabel!
    var viewModel : LocatiomDetailsVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI(){
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.nameLabel.text = viewModel.results.name
        self.typeLabel.text = viewModel.results.type
        self.dimensionLabel.text = viewModel.results.dimension
        
    }
  
}


extension LocationDetailsVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.results.residents!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data = viewModel.results
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell2", for: indexPath) as! CollectionViewCell
        
        //let urlString: String = "https://rickandmortyapi.com/api/character/avatar/" + String(splitStr.endIndex) + ".jpeg"        //let url = URL(string: urlString)!
        

        //cell.imageView.af.setImage(withURL: url)

        //cell.imageView.af.setImage(withURL: url)
        //cell.nameLabel.text = data.name
        
            
        return cell
            
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           
        let width = self.view.frame.width/2
        let height = self.view.frame.width/6
           
           return CGSize(width: width, height: height)
       }
    
    
    
}


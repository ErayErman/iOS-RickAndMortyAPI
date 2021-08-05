//
//  CharacterVC.swift
//  RickAndMorty
//
//  Created by Eray Erman on 5.08.2021.
//

import UIKit
import Alamofire
import AlamofireImage

class CharacterVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let viewModel = CharacterVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupVM()
    
        
    }
    private func setupUI() {
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        //collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "imageCell")
    }
    
    private func setupVM() {
        viewModel.getData()
        viewModel.updateUI = { [weak self] in
            guard let self = self else { return }
            self.collectionView.reloadData()
            
        }
        
    }
    


}
extension CharacterVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.results.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data = viewModel.results[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath)
        
            
        return cell
            
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           
           let width = self.view.frame.width/3
           let height: CGFloat = 200
           
           return CGSize(width: width, height: height)
       }
    
    
    
    
    
    
}

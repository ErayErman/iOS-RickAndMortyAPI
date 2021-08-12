//
//  CharacterVC.swift
//  RickAndMorty
//
//  Created by Eray Erman on 5.08.2021.
//

import UIKit
import Alamofire
import AlamofireImage

class CharacterVC: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    let viewModel = CharacterVM()
    var dataList: [CharacterModel] = []
    var filteredList : [CharacterModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupVM()
    
        
    }
    private func setupUI() {
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.searchBar.delegate = self
       
    }
    
    private func setupVM() {
        viewModel.getData()
        viewModel.updateUI = { [weak self] in
            guard let self = self else { return }
            self.collectionView.reloadData()
            
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.dataList = viewModel.results
        filteredList = dataList.filter {$0.name!.lowercased().contains(searchText.lowercased())}
        collectionView.reloadData()
        
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.searchBar.text = ""
        collectionView.reloadData()
    }

}
extension CharacterVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if !filteredList.isEmpty {
            return filteredList.count
        }else {return viewModel.results.count}
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! CollectionViewCell
        //let data = viewModel.results[indexPath.row]
        
        if filteredList.isEmpty {
            let data = viewModel.results[indexPath.row]
            let urlString: String = data.image!
            let url = URL(string: urlString)!
            cell.imageView.af.setImage(withURL: url)
            cell.nameLabel.text = data.name!
            
        }else{
            let fData = filteredList[indexPath.row]
            let urlString: String = fData.image!
            let url = URL(string: urlString)!
            cell.imageView.af.setImage(withURL: url)
            cell.nameLabel.text = fData.name!
            
        }
        
        
            
        return cell
            
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           
        let width = self.view.frame.width/2.5
        let height = self.view.frame.width/3
           
           return CGSize(width: width, height: height)
       }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sendedData = viewModel.results[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "CharacterDetailsVC") as! CharacterDetailsVC
        let vm = CharacterDetailsVM.init(sendedData)
        vc.viewModel = vm
        navigationController?.present(vc, animated: true, completion: nil)
    }
    
    
}

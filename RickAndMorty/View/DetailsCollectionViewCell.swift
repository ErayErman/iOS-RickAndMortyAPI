//
//  DetailsCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Eray Erman on 9.08.2021.
//

import UIKit
import AlamofireImage

class DetailsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageView.image = nil
    }
    
    func setupUI(_ url: String){
        let index = url.split(separator: "/")
        let urlString: String = "https://rickandmortyapi.com/api/character/avatar/" + index[4] + ".jpeg"
        let urlString2 : URL = URL(string: urlString)!
        self.imageView.af.setImage(withURL: urlString2)
    }
}

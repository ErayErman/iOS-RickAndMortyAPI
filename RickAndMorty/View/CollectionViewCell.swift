//
//  CollectionViewCell.swift
//  RickAndMorty
//
//  Created by Eray Erman on 5.08.2021.
//

import UIKit
import AlamofireImage


class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
}

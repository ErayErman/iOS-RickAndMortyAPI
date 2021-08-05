//
//  CharacterVM.swift
//  RickAndMorty
//
//  Created by Eray Erman on 4.08.2021.
//

import Foundation
import Alamofire


class CharacterVM {
    
    var results: [CharacterModel] = []
    var updateUI: (() -> Void) = {}

    func getData(){
        
        AF.request("https://rickandmortyapi.com/api/character", method: .get).responseJSON { [weak self] response in
            guard let self = self else { return }
            let dataModel : CharacterDataModel = try! JSONDecoder().decode(CharacterDataModel.self, from: response.data!)
            self.results = dataModel.results!
            self.updateUI()
            
        }
    }
}

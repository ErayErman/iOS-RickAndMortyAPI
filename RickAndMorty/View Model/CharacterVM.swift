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
    var url : String = "https://rickandmortyapi.com/api/character/?page="

    func getData(){
        
        for i in 1...34 {
            
            AF.request(url + String(i), method: .get).validate().responseJSON { [weak self] response in
                    guard let self = self else { return }
                    let dataModel : CharacterDataModel = try! JSONDecoder().decode(CharacterDataModel.self, from: response.data!)
                    self.results.append(contentsOf: dataModel.results!)
                    self.updateUI()
                    
                }
        }
        
        
       
    }
}

//
//  EpisodeVM.swift
//  RickAndMorty
//
//  Created by Eray Erman on 4.08.2021.
//

import Foundation
import Alamofire


class EpisodeVM {
    
    var data: [EpisodeModel] = []
    var updateUI: (() -> Void) = {}

    func getData(){
        
        AF.request("https://rickandmortyapi.com/api/episode", method: .get).responseJSON { [weak self] response in
            guard let self = self else { return }
            debugPrint(response)
            let dataModel : EpisodeDataModel = try! JSONDecoder().decode(EpisodeDataModel.self, from: response.data!)
            self.data = dataModel.data!
            self.updateUI()
            
        }
    }
}

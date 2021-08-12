//
//  EpisodeVM.swift
//  RickAndMorty
//
//  Created by Eray Erman on 4.08.2021.
//

import Foundation
import Alamofire


class EpisodeVM {
    
    var results: [EpisodeModel] = []
    var updateUI: (() -> Void) = {}
    var url : String = "https://rickandmortyapi.com/api/episode/?page="
    func getData(){
        for i in 1...3 {
            AF.request(url + String(i)).responseJSON { [weak self] response in
                guard let self = self else { return }
                let dataModel : EpisodeDataModel = try! JSONDecoder().decode(EpisodeDataModel.self, from: response.data!)
                self.results.append(contentsOf: dataModel.results!)
                self.updateUI()
                
            }
        }
        
    }
}

//
//  LocationVM.swift
//  RickAndMorty
//
//  Created by Eray Erman on 4.08.2021.
//

import Foundation
import Alamofire


class LocationVM {
    var results: [LocationModel] = []
    var updateUI: (() -> Void) = {}
    
    func getData(){
        
        AF.request("https://rickandmortyapi.com/api/location").responseJSON { [weak self] response in
            guard let self = self else { return }
            let dataModel : LocationDataModel = try! JSONDecoder().decode(LocationDataModel.self, from: response.data!)
            self.results = dataModel.results!
            self.updateUI()
            
        }
    }
 
    
}

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
    var url : String = "https://rickandmortyapi.com/api/location/?page="
    func getData(){
        
        for i in 1...6 {
            
            AF.request(url + String(i)).responseJSON { [weak self] response in
                guard let self = self else { return }
                let dataModel : LocationDataModel = try! JSONDecoder().decode(LocationDataModel.self, from: response.data!)
                self.results.append(contentsOf: dataModel.results!)
                self.updateUI()
                
            }
        }
        
    }
 
    
}

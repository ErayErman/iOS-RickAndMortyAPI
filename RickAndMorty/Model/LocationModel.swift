//
//  LocationModel.swift
//  RickAndMorty
//
//  Created by Eray Erman on 4.08.2021.
//

import Foundation


struct LocationDataModel: Codable {
    let success: Bool?
    let info: Info?
    let results: [LocationModel]?
}


struct LocationModel: Codable {
    
    let id: Int?
    let name: String?
    let type: String?
    let dimension: String?
    let residents: [String]?
    let url: String?
    let created: String?
    
}


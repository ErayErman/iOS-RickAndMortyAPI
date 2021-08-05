//
//  EpisodeModel.swift
//  RickAndMorty
//
//  Created by Eray Erman on 4.08.2021.
//

import Foundation

struct EpisodeDataModel: Codable {
    let success: Bool?
    let info: Info?
    let result: [EpisodeModel]?
}


struct EpisodeModel: Codable {
    
    let id: Int?
    let name: String?
    let air_date: String?
    let episode: String?
    let characters: [String]?
    let url: String?
    let created: String?
    
}

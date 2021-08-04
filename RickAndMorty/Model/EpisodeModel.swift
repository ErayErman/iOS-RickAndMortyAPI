//
//  EpisodeModel.swift
//  RickAndMorty
//
//  Created by Eray Erman on 4.08.2021.
//

import Foundation

struct EpisodeDataModel: Codable {
    let success: Bool?
    let data: [EpisodeModel]?
}


struct EpisodeModel: Codable {
    
    let count: Int?
    let pages: Int?
    let next: String?
    let prev: String?
    
    let id: Int?
    let name: String?
    let air_date: String?
    let episode: Data?
    let characters: [String]?
    let url: String?
    let created: String?
    
}

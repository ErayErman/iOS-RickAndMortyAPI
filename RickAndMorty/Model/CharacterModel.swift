//
//  CharacterModel.swift
//  RickAndMorty
//
//  Created by Eray Erman on 4.08.2021.
//

import Foundation

// - Character Model

struct CharacterDataModel: Codable {
    let success: Bool?
    let info: Info
    let results: [CharacterModel]?
}
struct Info: Codable {
    let count: Int?
    let pages: Int?
    let next: String?
    let prev: String?
}

struct CharacterModel: Codable {
    
    
    let id: Int?
    let name: String?
    let status: String?
    let species: String?
    let type: String?
    let gender: String?
    let origin: Origin?
    let location: Location?
    let image: String?
    let episode: [String]?
    let url: String?
    let created: String?
    
}

struct Origin: Codable {
    let name: String?
    let url: String?
}
struct Location: Codable {
    let name: String?
    let url: String?
}

// - Location Model

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


// - Episode Model

struct EpisodeDataModel: Codable {
    let success: Bool?
    let info: Info?
    let results: [EpisodeModel]?
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

//
//  CharacterModel.swift
//  RickAndMorty
//
//  Created by Eray Erman on 4.08.2021.
//

import Foundation

struct CharacterDataModel: Codable {
    let success: Bool?
    let data: [CharacterModel]?
}


struct CharacterModel: Codable {
    let count: Int?
    let pages: Int?
    let next: String?
    let prev: String?
    
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

//
//  Entity.swift
//  RickAndMortyViper2
//
//  Created by Alejandro Guerra Hernandez on 15/01/25.
//

import Foundation

struct ApiData: Decodable {
    let info: Info
    let results: [Char]
}

struct Info: Decodable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}

struct Char: Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let image: String
    let episode: [String]
    let url: String
}

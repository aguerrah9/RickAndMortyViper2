//
//  Interactor.swift
//  RickAndMortyViper2
//
//  Created by Alejandro Guerra Hernandez on 15/01/25.
//

import Foundation

enum TypeError: Error {
    case networkFailure
    case parsingFailure
}

protocol AnyInteractor {
    var presenter: AnyPresenter? {get set}
    
    func descargaDatos()
}

class Interactor: AnyInteractor {
    var presenter: (any AnyPresenter)?
    
   
    func descargaDatos() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { return }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, res, error in
            guard let data = data, error == nil else {
                self?.presenter?.interactorDidDowloadData(results: .failure(TypeError.networkFailure))
                return
            }
            do {
                let results = try JSONDecoder().decode(ApiData.self, from: data)
                self?.presenter?.interactorDidDowloadData(results: .success(results))
            } catch {
                self?.presenter?.interactorDidDowloadData(results: .failure(error))
            }
        }
    }
    
}

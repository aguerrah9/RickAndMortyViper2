//
//  Presenter.swift
//  RickAndMortyViper2
//
//  Created by Alejandro Guerra Hernandez on 15/01/25.
//

import Foundation

protocol AnyPresenter {
    var router: AnyRouter? {get set}
    var view: AnyView? {get set}
    var interactor: AnyInteractor? {get set}
    
    func interactorDidDowloadData(results: Result<ApiData,Error>)
}

class Presenter: AnyPresenter {
    var router: (any AnyRouter)?
    
    var view: (any AnyView)?
    
    var interactor: (any AnyInteractor)?
    
    func interactorDidDowloadData(results: Result<ApiData, any Error>) {
        switch results {
        case .success(let apiData):
            print(apiData)
        case .failure(let error):
            print(error)
        }
    }
}

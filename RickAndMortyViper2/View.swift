//
//  View.swift
//  RickAndMortyViper2
//
//  Created by Alejandro Guerra Hernandez on 15/01/25.
//

import Foundation
import UIKit

protocol AnyView {
    var presenter: AnyPresenter? {get set}
}

class View: UIViewController, AnyView {
    var presenter: (any AnyPresenter)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}

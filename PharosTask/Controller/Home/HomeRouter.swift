//
//  HomeRouter.swift
//  HIS_Patient
//
//  Created by m3azy on 15/11/2022.
//
//

import Foundation
import UIKit

protocol IHomeRouter {
    
}

class HomeRouter: IHomeRouter {

    private var viewController: HomeViewController?
    
    func open() -> HomeViewController {
        let interactor = HomeInteractor()
        viewController = HomeViewController()
        let presenter = HomePresenter(withViewController: viewController!, interactor: interactor, router: self)
        viewController!.presenter = presenter        
        return viewController!
    }
}

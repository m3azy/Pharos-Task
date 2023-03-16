//
//  HomePresenter.swift
//  HIS_Patient
//
//  Created by m3azy on 15/11/2022.
//
//

import Foundation

protocol IHomePresenter {
    
}

class HomePresenter: IHomePresenter {

    private let viewController: IHomeViewController!
    private let router: IHomeRouter!
    private let interactor: IHomeInteractor!
    
    var arrrayItems = [ItemModel]()
        
    init(withViewController vc: IHomeViewController, interactor: IHomeInteractor, router: IHomeRouter) {
        self.viewController = vc
        self.router = router
        self.interactor = interactor
    }
    
    func viewDidLoad() {
        
    }
}

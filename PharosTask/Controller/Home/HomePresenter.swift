//
//  HomePresenter.swift
//  HIS_Patient
//
//  Created by m3azy on 15/11/2022.
//
//

import Foundation

protocol IHomePresenter {
    func viewDidLoad()
    func getArrayCount() -> Int
    func getItemAt(_ index: Int) -> ItemModel
}

class HomePresenter: IHomePresenter {

    private let viewController: IHomeViewController!
    private let router: IHomeRouter!
    private let interactor: IHomeInteractor!
    
    var arrayItems = [ItemModel]()
        
    init(withViewController vc: IHomeViewController, interactor: IHomeInteractor, router: IHomeRouter) {
        self.viewController = vc
        self.router = router
        self.interactor = interactor
    }
    
    func viewDidLoad() {
        arrayItems = interactor.fillArray()
        sortArray()
        viewController.reloadTable()
        Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(updateValues), userInfo: nil, repeats: true)
    }
    
    @objc func updateValues() {
        arrayItems.indices.forEach { arrayItems[$0].generateRandomNumbers() }
        sortArray()
        viewController.reloadTable()
    }
    
    func sortArray() {
        arrayItems = arrayItems.sorted { item1, item2 in
            item1.lastPrice ?? 1 > item2.lastPrice ?? 1
        }
    }
    
    func getArrayCount() -> Int {
        arrayItems.count
    }
    
    func getItemAt(_ index: Int) -> ItemModel {
        arrayItems[index]
    }
}

//
//  HomeInteractor.swift
//  HIS_Patient
//
//  Created by m3azy on 15/11/2022.
//  
//

import Foundation

protocol IHomeInteractor {
    func fillArray() -> [ItemModel]
}

class HomeInteractor: IHomeInteractor {
    
    
    func fillArray() -> [ItemModel] {
        var arrayItems = [ItemModel]()
        arrayItems.append(ItemModel(name: "البنك التجاري"))
        arrayItems.append(ItemModel(name: "البنك الاهلي"))
        arrayItems.append(ItemModel(name: "بنك مصر"))
        arrayItems.append(ItemModel(name: "فاروس"))
        return arrayItems
    }
}

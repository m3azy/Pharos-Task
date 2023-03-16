//
//  ItemModel.swift
//  PharosTask
//
//  Created by Mohamed Elmaazy on 16/03/2023.
//

import Foundation

struct ItemModel {
    var name: String?
    var lastPrice: Double?
    var openningPrice: Double?
    var closingPrice: Double?
    
    init(name: String) {
        self.name = name
        generateRandomNumbers()
    }
    
    mutating func generateRandomNumbers() {
        lastPrice = Double.random(in: 1...1000)
        openningPrice = Double.random(in: 1...1000)
        closingPrice = Double.random(in: 1...1000)
    }
}

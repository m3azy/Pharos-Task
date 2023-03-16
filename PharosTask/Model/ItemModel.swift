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
    var lastPriceUp: Bool?
    var openningPriceUp: Bool?
    var closingPriceUp: Bool?
    
    init(name: String) {
        self.name = name
        generateRandomNumbers()
    }
    
    mutating func generateRandomNumbers() {
        let newLastPrice = Double.random(in: 1...1000).round()
        let newOpenningPrice = Double.random(in: 1...1000).round()
        let newClosingPrice = Double.random(in: 1...1000).round()
        lastPriceUp = newLastPrice > lastPrice ?? 1
        openningPriceUp = newOpenningPrice > openningPrice ?? 1
        closingPriceUp = newClosingPrice > closingPrice ?? 1
        lastPrice = newLastPrice
        openningPrice = newOpenningPrice
        closingPrice = newClosingPrice
    }
}

//
//  HomeTableViewCell.swift
//  PharosTask
//
//  Created by Mohamed Elmaazy on 16/03/2023.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelLastPrice: UILabel!
    @IBOutlet weak var labelOpenningPrice: UILabel!
    @IBOutlet weak var labelClosingPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setData(_ model: ItemModel) {
        labelName.text = model.name
        labelLastPrice.text = "\(model.lastPrice ?? 1)"
        labelLastPrice.textColor = model.lastPriceUp ?? false ? .green : .red
        labelLastPrice.blink()
        labelOpenningPrice.text = "\(model.openningPrice ?? 1)"
        labelOpenningPrice.textColor = model.openningPriceUp ?? false ? .green : .red
        labelOpenningPrice.blink()
        labelClosingPrice.text = "\(model.closingPrice ?? 1)"
        labelClosingPrice.textColor = model.closingPriceUp ?? false ? .green : .red
        labelClosingPrice.blink()
    }
}

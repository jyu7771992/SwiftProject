//
//  StockTableViewCell.swift
//  StockPrice
//
//  Created by Peipei Yu on 4/10/22.
//

import UIKit

class StockTableViewCell: UITableViewCell {

    @IBOutlet weak var lblCompany: UILabel!
    @IBOutlet weak var lblSymbol: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    var name=""
    var symbol=""
    
    var sendStockDelegate : SendStockDelegate?
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func getPriceAction(_ sender: Any) {
        let url = getStockURL(symbol)
        
        getStockData(url).done { stockModel in
            stockModel.name = self.name
            stockModel.symbol = self.symbol
//            print(StockModel.name)
//            print(StockModel.price)
//            print(StockModel.symbol)
//            print(StockModel.dayLow)
//            print(StockModel.dayHigh)
////            StockModel.name = self.name
            print(stockModel)
            self.sendStockDelegate?.sendStockData(stockModel)
            
        }
        .catch { error in
            print(error.localizedDescription)
        }
    }
}

//
//  ViewController.swift
//  StockPrice
//
//  Created by Peipei Yu on 4/10/22.
//

import UIKit

class ViewController: UIViewController, SendStockDelegate {

    
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblSymbol: UILabel!
    
    @IBOutlet weak var lblPrice: UILabel!
    
    @IBOutlet weak var lblHigh: UILabel!
    @IBOutlet weak var lblLow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stockModel = initializeStock()
        // Do any additional setup after loading the view.
    }
    var stockModel: [StockModel]?
    
    func initializeStock() -> [StockModel]{
            let FB = StockModel("FaceBook", "FB");
            let AAPL = StockModel("Apple Inc.", "AAPL");
            let GOOG = StockModel("Google", "GOOG");
            let MSFT = StockModel("Microsoft", "MSFT");
            let AMZN = StockModel("Amazon", "AMZN");
        

            var modelArr = [StockModel]()
            
            modelArr.append(FB)
            modelArr.append(AAPL)
            modelArr.append(GOOG)
            modelArr.append(MSFT)
            modelArr.append(AMZN)

            return modelArr
    }
        
        
    func sendStockData(_ stockModel: StockModel) {
        print(stockModel)
        lblName.text = stockModel.name
        lblSymbol.text = stockModel.symbol
        lblPrice.text = "Price: \(stockModel.price)"
        lblHigh.text = "DayHigh: \(stockModel.dayHigh)"
        lblLow.text = "DayLow: \(stockModel.dayLow)"
    }

}


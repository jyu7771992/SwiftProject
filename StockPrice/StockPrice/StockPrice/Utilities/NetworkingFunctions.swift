//
//  NetworkingFunctions.swift
//  StockPrice
//
//  Created by Peipei Yu on 4/10/22.
//

import Foundation
import PromiseKit
import Alamofire
import SwiftyJSON

func getStockURL(_ Symbol : String) -> String{
    let url = "\(stockUrl)\(Symbol)?apikey=\(apiKey)"
    return url
}

func getStockData(_ url : String) -> Promise<StockModel>{
    
    return Promise<StockModel> { seal -> Void in
        AF.request(url).responseJSON { response in
            if response.error != nil {
                seal.reject(response.error!)
            }
            
            let stockModel = StockModel("","")
            //get data here
            let stockJSON = JSON(response.data!).arrayValue
            guard let stockQuote = stockJSON.first else {return seal.fulfill(stockModel)}

            stockModel.name = stockQuote["name"].stringValue
            stockModel.symbol = stockQuote["symbol"].stringValue
            stockModel.price = stockQuote["price"].floatValue
            stockModel.dayLow = stockQuote["dayLow"].floatValue
            stockModel.dayHigh = stockQuote["dayHigh"].floatValue
            seal.fulfill(stockModel)
        }// end of response
    }// end is return Promise
}// end of function

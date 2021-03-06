//
//  ProtocalSendStockData.swift
//  StockPrice
//
//  Created by Peipei Yu on 4/10/22.
//

import Foundation

protocol SendStockDelegate {
    func sendStockData(_ stockModel : StockModel)
}

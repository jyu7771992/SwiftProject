//
//  TableViewCode.swift
//  StockPrice
//
//  Created by Peipei Yu on 4/10/22.
//

import Foundation
import UIKit
extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let rows = stockModel?.count else { return 0 }
        return rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = Bundle.main.loadNibNamed("StockTableViewCell", owner: self, options: nil)?.first as! StockTableViewCell
        
        guard let stockModel = stockModel?[indexPath.row] else {return cell}

        if indexPath.row == 0 {
            cell.lblCompany.text = "Current Company"
        }else {
            cell.lblCompany.text = stockModel.name
            cell.lblSymbol.text = stockModel.symbol
        }
        
        cell.name = stockModel.name
        cell.symbol = stockModel.symbol
        cell.sendStockDelegate = self
        
        return cell
    }
    
    
    
}



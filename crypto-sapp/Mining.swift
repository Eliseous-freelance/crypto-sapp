//
//  Mining.swift
//  crypto
//
//  Created by Eliseo Dalle Crode on 13/02/2022.
//


import Charts
import SwiftUI

class Mining{
    var totalBalance: Double
    var balance: Double
    var name: String
    
    /*
     constructor
     */
    init(totalBalance: Double, balance: Double, name: String){
        self.totalBalance = totalBalance
        self.balance = balance
        self.name = name
    }
    
    static func dataEntriesForMiner(totalBalance: Double, balance: Double, miners: [Mining]) -> [BarChartDataEntry]{
        let balanceMiners = miners.filter{$0.balance == balance}
        return balanceMiners.map{BarChartDataEntry(x: $0.totalBalance, y: $0.balance)}
    }
    
    static var months = ["0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"]
    
    static var allMiners:[Mining]{
        [
            Mining(totalBalance: 50, balance: 50, name: "MainNet"),
            Mining(totalBalance: 50, balance: 0, name: "CoinBase"),
            Mining(totalBalance: 45, balance: 0, name: "Binance"),
            Mining(totalBalance: 86, balance: 34, name: "Binance"),
            Mining(totalBalance: 78, balance: 35, name: "Binance"),
            Mining(totalBalance: 32, balance: 67, name: "Binance"),
            Mining(totalBalance: 54, balance: 0, name: "Binance"),
            Mining(totalBalance: 50, balance: 0, name: "CoinBase"),
            Mining(totalBalance: 50, balance: 0, name: "CoinBase"),
            Mining(totalBalance: 50, balance: 0, name: "CoinBase")
        ]
    }
}

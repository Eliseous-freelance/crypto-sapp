//
//  Wallet.swift
//  crypto
//
//  Created by Eliseo Dalle Crode on 13/02/2022.
//


import Charts
import SwiftUI

class Wallet{
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
    
    static func dataEntriesForWallet(totalBalance: Double, balance: Double, wallets: [Wallet]) -> [BarChartDataEntry]{
        let balanceWallets = wallets.filter{$0.balance == balance}
        return balanceWallets.map{BarChartDataEntry(x: $0.totalBalance, y: $0.balance)}
    }
    
    static var months = ["0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"]
    
    static var allWallets:[Wallet]{
        [
            Wallet(totalBalance: 50, balance: 50, name: "MainNet"),
            Wallet(totalBalance: 50, balance: 0, name: "CoinBase"),
            Wallet(totalBalance: 45, balance: 0, name: "Binance"),
            Wallet(totalBalance: 86, balance: 34, name: "Binance"),
            Wallet(totalBalance: 78, balance: 35, name: "Binance"),
            Wallet(totalBalance: 32, balance: 67, name: "Binance"),
            Wallet(totalBalance: 54, balance: 0, name: "Binance"),
            Wallet(totalBalance: 50, balance: 0, name: "CoinBase"),
            Wallet(totalBalance: 50, balance: 0, name: "CoinBase"),
            Wallet(totalBalance: 50, balance: 0, name: "CoinBase")
        ]
    }
}

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
    
    
}

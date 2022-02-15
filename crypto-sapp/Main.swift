//
//  Main.swift
//  crypto-sapp
//
//  Created by Eliseo Dalle Crode on 14/02/2022.
//

import SwiftUI
class Main{
    private let wallet: Wallet
    private var moneyOwned: Int
    private var moneyMined: Int
    private var moneyInvested: Int
    private var values: [Double]
    private var colors: [Color]
    private var degrees: Double
    private let sum: Double
    private var endDeg: Double
    private var value: Double
    private var data: URL
    
    init(){
        self.wallet = Wallet(totalBalance: 50, balance: 0, name: "MainNet")
        self.moneyOwned = 10
        self.moneyMined = 10
        self.moneyInvested = 10
        self.values =  [10, 45]
        self.colors = [Color.red, Color.blue]
        self.sum = values.reduce(0, +)
        self.value = 10
        self.degrees = Double(value * 360) / sum
        self.endDeg = 0
        
        
        
        self.data = Data(URL(String: "https://jsonplaceholder.typicode.com/todos"))
    }
    
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
    
    static var allCoins:[Coin]{
        [
        Coin(coin_name: "Mana", coin_value: 50),
        Coin(coin_name: "Polygon", coin_value: 50)
        ]
    }
    
    static var allInvestments:[Investments]{
        [
            Investments(totalInvested: 40, balance: 50, coins: allCoins),
            Investments(totalInvested: 50, balance: 0, coins: allCoins),
            Investments(totalInvested: 45, balance: 0, coins: allCoins),
            Investments(totalInvested: 86, balance: 34, coins: allCoins),
            Investments(totalInvested: 78, balance: 35, coins: allCoins),
            Investments(totalInvested: 32, balance: 67, coins: allCoins)
        ]
    }
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
        ]
    }
}

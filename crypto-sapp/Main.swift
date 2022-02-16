//
//  Main.swift
//  crypto-sapp
//
//  Created by Eliseo Dalle Crode on 14/02/2022.
//

import SwiftUI
class Main{
    public var moneyOwned: Int
    private var moneyMined: Int
    private var moneyInvested: Int
    
//
//    private var values: [Double]
//    private var colors: [Color]
//    private var degrees: Double
//    private let sum: Double
//    private var endDeg: Double
//    private var value: Double
    private var data: Data
    
    public var homepage: HomePage
    public var investments: Investments
    public var miners: Mining
    
    private var allCoins:[Coin] = [Coin(coin_name: "Mana", coin_value: 50), Coin(coin_name: "Mana", coin_value: 50)]
    public var allWallets:[Wallet] = [Wallet(totalBalance: 50, balance: 50, name: "MainNet"), Wallet(totalBalance: 50, balance: 0, name: "CoinBase"), Wallet(totalBalance: 45, balance: 0, name: "Binance")]
    private var allInvestments:[Investments]
    
    init(){
        self.moneyOwned = 10
        self.moneyMined = 10
        self.moneyInvested = 10
        
        self.data = Data(url: "https://jsonplaceholder.typicode.com/todos")
        
        self.allInvestments = [Investments(coins: allCoins, initialInvestment: 50), Investments(coins: allCoins, initialInvestment: 50), Investments(coins: allCoins, initialInvestment: 50)]
        
        self.miners = Mining(totalBalance: 0, balance: 0, name: "Binance")
        self.investments = Investments(coins: allCoins, initialInvestment: 700)
        self.homepage = HomePage(moneyOwned: 50, moneyMined: 50, moneyInvested: 50)
        
            //self.homepage_summary = homepage.update_values(moneyOwned: Double, moneyMined: <#T##Double#>, moneyInvested: <#T##Double#>)
    }
    
    
//    var allCoins:[Coin]{
//        [
//        Coin(coin_name: "Mana", coin_value: 50),
//        Coin(coin_name: "Mana", coin_value: 50)
//        ]
//    }
//
//    var allInvestments:[Investments]{
//        [
//            Investments(coins: allCoins, initialInvestment: 50),
//            Investments(coins: allCoins, initialInvestment: 0),
//            Investments(coins: allCoins, initialInvestment: 0),
//            Investments(coins: allCoins, initialInvestment: 34),
//            Investments(coins: allCoins, initialInvestment: 32),
//            Investments(coins: allCoins, initialInvestment: 24)
//        ]
//    }
//    var allMiners:[Mining]{
//        [
//            Mining(totalBalance: 50, balance: 50, name: "MainNet"),
//            Mining(totalBalance: 50, balance: 0, name: "CoinBase"),
//            Mining(totalBalance: 45, balance: 0, name: "Binance"),
//            Mining(totalBalance: 86, balance: 34, name: "Binance"),
//            Mining(totalBalance: 78, balance: 35, name: "Binance"),
//            Mining(totalBalance: 32, balance: 67, name: "Binance"),
//            Mining(totalBalance: 54, balance: 0, name: "Binance"),
//            Mining(totalBalance: 50, balance: 0, name: "CoinBase"),
//        ]
//    }
}

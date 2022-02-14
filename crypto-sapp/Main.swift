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
    }
}

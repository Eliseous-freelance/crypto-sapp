//
//  Investing.swift
//  crypto-sapp
//
//  Created by Eliseo Dalle Crode on 14/02/2022.
//


class Investing{
    var totalInvested: Double
    var balance: Double
    var name: String
    
    /*
     constructor
     */
    init(totalInvested: Double, balance: Double, name: String){
        self.totalInvested = totalInvested
        self.balance = balance
        self.name = name
    }
}

//
//  Investments.swift
//  crypto-sapp
//
//  Created by Eliseo Dalle Crode on 14/02/2022.
//


class Investments{
    private var totalInvested: Double
    private var totalReturn: Double
    private var coins: [Coin]
    
    private var initialInvestment: Double
    
    /*
     constructor
     */
    init(coins: [Coin], initialInvestment: Double){
        self.coins = coins
        self.totalInvested = 0
        self.initialInvestment = initialInvestment
        self.totalReturn = self.totalInvested - initialInvestment
    }
    
    func setTotalInvested(){
        self.totalInvested = get_total_Invested(coins: self.coins)
    }
    
    func get_total_Invested(coins: [Coin]) -> Double{
        for i in coins{
            self.totalInvested += i.coin_value
        }
        return totalInvested
    }
}

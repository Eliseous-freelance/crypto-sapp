//
//  Investments.swift
//  crypto-sapp
//
//  Created by Eliseo Dalle Crode on 14/02/2022.
//


class Investments{
    private var _totalInvested: Double!
    var totalInvested: Double{
        return _totalInvested =
    }
    private var totalReturn: Double
    private var _coins: [Coin]
    var coins: [Coin]{
        return _coins
    }
    private var initialInvestment: Double
    
    /*
     constructor
     */
    init(coins: [Coin], initialInvestment: Double){
        self._coins = coins
        self._totalInvested = self.get_total_Invested(coins: self._coins)
        self.initialInvestment = initialInvestment
        self.totalReturn = self._totalInvested - initialInvestment
    }
    
    func get_total_Invested(coins: [Coin]) -> Double{
        for i in coins{
            self._totalInvested += i.coin_value
        }
        return totalInvested
    }
    
    
    
    
    
}

//
//  HomePage.swift
//  crypto-sapp
//
//  Created by Eliseo Dalle Crode on 16/02/2022.
//

class HomePage{
    
    private var moneyOwned: Double
    private var moneyMined: Double
    private var moneyInvested: Double
    
    init(moneyOwned: Double, moneyMined: Double, moneyInvested: Double){
        self.moneyOwned = moneyOwned
        self.moneyMined = moneyMined
        self.moneyInvested = moneyInvested
    }
    
    func update_values(moneyOwned: Double, moneyMined:Double, moneyInvested: Double){
        self.moneyOwned = moneyOwned
        self.moneyMined = moneyMined
        self.moneyInvested = moneyInvested
    }
    
    func get_total_money_owned() -> String{
        return "money owned: \(self.moneyOwned)"
    }
    func get_summary() -> String{
        return "money mined: \(self.moneyMined) \nmoney invested: \(self.moneyInvested)"
    }
                
}




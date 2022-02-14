//
//  ContentView.swift
//  Shared
//
//  Created by Eliseo Dalle Crode on 13/02/2022.
//

import SwiftUI
import Charts

let wallet = Wallet(totalBalance: 50, balance: 0, name: "MainNet")
let moneyOwned = 10
let moneyMined = 10
let moneyInvested = 10
let values: [Double] = [10, 45]
var colors: [Color] = [Color.red, Color.blue]
let degrees: Double = Double(value * 360) / sum
let sum = values.reduce(0, +)
var endDeg: Double = 0
let value = 10

struct ContentView: View {
    @State private var selectedBalance : Int = 50
    @State private var barEntries: [BarChartDataEntry] = []
    
    var body: some View {
        TabView {
            VStack{
            Text("Hello, Eliseo...")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                Text("\nHere is summary of money owned: \(moneyOwned)\nmoney mined: \(moneyMined) \nmoney invested: \(moneyInvested)")
                WalletBarChartView(entries: Wallet.dataEntriesForWallet(totalBalance: 50, balance: 0, wallets: Wallet.allWallets), selectedWallet: $selectedBalance)
                    .frame(height: 100)
                }
            
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            VStack{
            Text("Mining")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                PieSliceView(pieSliceData: PieSliceData(startAngle: Angle(degrees: endDeg), endAngle: Angle(degrees: endDeg + degrees), color: Color.blue))
                }
            
                .tabItem {
                    Image(systemName: "video.circle.fill")
                    Text("Mining")
                }
            Text("Investing")
                .font(.system(size: 30, weight: .bold, design:
                    .rounded))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Investing")
                }
            VStack{
                Text("Total Balance: £\(wallet.totalBalance) ")
                    .font(.system(size: 30, weight: .bold, design:
                                        .rounded))
                Text("\(wallet.name) has: £\(wallet.balance)")
                Text("\(wallet.name) has: £\(wallet.balance)")
                Text("\(wallet.name) has: £\(wallet.balance)")
                WalletBarChartView(entries: Wallet.dataEntriesForWallet(totalBalance: 50, balance: 0, wallets: Wallet.allWallets), selectedWallet: $selectedBalance)
                    .frame(height: 100)
                }
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Wallet")
                   
                }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

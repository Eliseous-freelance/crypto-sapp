//
//  ContentView.swift
//  Shared
//
//  Created by Eliseo Dalle Crode on 13/02/2022.
//

import SwiftUI
import Charts

//let wallet = Wallet(totalBalance: 50, balance: 0, name: "MainNet")
let values: [Double] = [10, 45]
let sum = values.reduce(0, +)
let degrees: Double = Double(10 * 360) / sum

struct ContentView: View {
    @State private var selectedBalance : Int = 50
    @State private var barEntries: [BarChartDataEntry] = []
   // @State private var main: Main = Main()
    @State private var homepage: HomePage = Main().homepage
    @State private var wallets: [Wallet] = Main().allWallets
    
    func get_wallets_descrp() -> String{
        var w_string: String = ""
        for wallet in wallets{
            w_string += " \n\(wallet.name) has: £\(wallet.balance)"
        }
        return w_string
    }
    
    var body: some View {
        TabView {
            
            VStack{
            Text(Date(), style: .date)
            Text("\nHello, Eliseo... \n")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                
                Text(homepage.get_total_money_owned())
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                Text(homepage.get_summary())
                }
            
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            VStack{
            Text("Mining")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                PieSliceView(pieSliceData: PieSliceData(startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 0 + degrees), color: Color.blue))
                }
                .tabItem {
                    Image(systemName: "video.circle.fill")
                    Text("Mining")
                }
            VStack{
            Text("Investing")
                .font(.system(size: 30, weight: .bold, design:
                    .rounded))
                PieSliceView(pieSliceData: PieSliceData(startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 0 + degrees), color: Color.red))
            }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Investing")
                }
            VStack{
                Text("Total Balance: £\(Main().moneyOwned) ")
                    .font(.system(size: 30, weight: .bold, design:
                                        .rounded))
                
                Text(get_wallets_descrp())
        
                WalletBarChartView(entries: Wallet.dataEntriesForWallet(totalBalance: 50, balance: 0, wallets: Main().allWallets), selectedWallet: $selectedBalance)
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

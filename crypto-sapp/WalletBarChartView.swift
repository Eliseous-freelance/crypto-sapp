//
//  ChartView.swift
//  crypto
//
//  Created by Eliseo Dalle Crode on 14/02/2022.
//

// from Youtube: stopped at 21:55
//https://www.youtube.com/watch?v=csd7pyfEXgw


import SwiftUI
import Charts


struct WalletBarChartView: UIViewRepresentable{
    let entries: [BarChartDataEntry]
    @Binding var selectedWallet: Int
    
    func makeUIView(context: Context) -> BarChartView{
        return BarChartView()
    }
    
    func updateUIView(_ uiView: BarChartView, context: Context){
        let dataSet = BarChartDataSet(entries: entries)
        dataSet.label = "wallets"
        uiView.noDataText = "No Data"
        uiView.data = BarChartData(dataSet: dataSet)
        uiView.rightAxis.enabled = false
        uiView.zoom(scaleX: 1.5, scaleY: 1, x: 0, y:0)
        uiView.setScaleEnabled(false)
        formatDataSet(dataSet: dataSet)
        formatYAxis(yAxis: uiView.leftAxis)
        formatXAxis(xAxis: uiView.xAxis)
        formatLegend(legend: uiView.legend)
    }
    
    func formatDataSet(dataSet: BarChartDataSet){
        dataSet.colors = [.red]
        dataSet.valueColors = [.red]
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .none
        dataSet.valueFormatter = DefaultValueFormatter(formatter: formatter)
    }
    
    func formatYAxis(yAxis: YAxis){
        yAxis.labelTextColor = .cyan
        let formatter = NumberFormatter()
        formatter.numberStyle = .none
        //yAxis.valueFormatter = DefaultAxisValueFormatter(formatter: formatter)
        yAxis.valueFormatter = IndexAxisValueFormatter(values: [String(Main().allWallets[0].balance), String(Main().allWallets[1].balance), String(Main().allWallets[2].balance)])
        yAxis.axisMinimum = 0
    }
    
    func formatXAxis(xAxis: XAxis){
        xAxis.valueFormatter = IndexAxisValueFormatter(values: [Main().allWallets[0].name, Main().allWallets[1].name, Main().allWallets[2].name])
        xAxis.labelPosition = .bottom
        xAxis.labelTextColor = .blue
        
    }
    
    func formatLegend(legend: Legend){
        legend.textColor = .purple
        legend.horizontalAlignment = .right
        legend.verticalAlignment = .top
        legend.drawInside = true
        legend.yOffset = 10.0
    }
}

struct WalletBarChartView_Previews: PreviewProvider{
    static var previews: some View{
        WalletBarChartView(entries: Wallet.dataEntriesForWallet(totalBalance: 50, balance: 0, wallets: Main().allWallets), selectedWallet: .constant(50))
    }
}
    

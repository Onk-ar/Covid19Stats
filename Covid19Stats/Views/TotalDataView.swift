//
//  TotalDataView.swift
//  Covid19Stats
//
//  Created by Onkar Singh on 5/24/20.
//  Copyright © 2020 Onkar Singh. All rights reserved.
//

import SwiftUI

struct TotalDataView: View {
    
    var totalData: TotalData
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0.0) {
            
            HStack {
                TotalCardView(number: totalData.confirmed.formatNumber(), name: "Confirmed")
                
                TotalCardView(number: totalData.critical.formatNumber(), name: "Critical", color: .blue)
                
                TotalCardView(number: totalData.deaths.formatNumber(), name: "Deaths", color: .red)
            }
            
//            HStack {
//                TotalCardView(number: String(format: "%.2f", totalData.fatalityRate), name: "Death %", color: .red)
//
//                TotalCardView(number: totalData.recovered.formatNumber(), name: "Recovered", color: .green)
//
//                TotalCardView(number: String(format: "%.2f", totalData.recoveredRate), name: "Recovery%", color: .green)
//            }
            
            
        } //End of Vstack
            .frame(height: 100.0)
        .padding(10)
        
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testTotalData)
    }
}

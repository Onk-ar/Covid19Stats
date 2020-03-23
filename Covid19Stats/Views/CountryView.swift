//
//  CountryView.swift
//  Covid19Stats
//
//  Created by Onkar Singh on 5/24/20.
//  Copyright © 2020 Onkar Singh. All rights reserved.
//

import SwiftUI

struct CountryView: View {
    
    var countryData: CountryData
    
    var body: some View {
        
        VStack {
            VStack {
                CountryDetailView(number: countryData.confirmed.formatNumber(), name: "Confirmed")
                    .padding(.top)
                CountryDetailView(number: countryData.critical.formatNumber(), name: "Critical", color: .blue)
                CountryDetailView(number: countryData.deaths.formatNumber(), name: "Deaths", color: .red)
                CountryDetailView(number: String(format: "%.2f", countryData.fatalityRate), name: "Death%", color: .red)
                CountryDetailView(number: countryData.recovered.formatNumber(), name: "Recovered", color: .green)
                CountryDetailView(number: String(format: "%.2f", countryData.recoveredRate), name: "Recovered%", color: .green)
                
            }
            .background(Color("cardBackgroundGray"))
            .cornerRadius(8)
            .padding()
            
            
            Spacer()
        }
        .padding(.top, 50)
        .navigationBarTitle(countryData.country)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView(countryData: testCountryData)
    }
}

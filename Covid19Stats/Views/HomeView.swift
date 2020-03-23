//
//  HomeView.swift
//  Covid19Stats
//
//  Created by Onkar Singh on 5/24/20.
//  Copyright © 2020 Onkar Singh. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var covidFetch = GetCovidData()
    @State var searchText = ""
    @State var isSearchVisible = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                if isSearchVisible {
                    SearchView(searchText: $searchText)
                }
                Text("Global Cases")
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 5.0)

                TotalDataView(totalData: covidFetch.totalData)
                ListTopbarView()
                
                List {
                    
                    ForEach(covidFetch.allCountries.filter {
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) { countryData in
                        
                        NavigationLink(destination: CountryView(countryData: countryData)) {
                            
                            CountryDataView(countryData: countryData)
                        }
                    }
                }
                
            }//End of VStack
                .navigationBarTitle("Covid19 Cases Data", displayMode: .inline)
                .navigationBarItems(trailing:
                    
                    Button(action: {
                        
                        self.isSearchVisible.toggle()
                        
                        if !self.isSearchVisible {
                            self.searchText = ""
                        }
                        
                    }, label: {
                        Image(systemName: "magnifyingglass")
                    })
            )
            
        }//End of Navigation view
        
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  SearchView.swift
//  Covid19Stats
//
//  Created by Onkar Singh on 5/24/20.
//  Copyright © 2020 Onkar Singh. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack {
            
            TextField("Country", text: $searchText)
                .padding()
        }
        .frame(height: 50)
        .background(Color("cardBackgroundGray"))
    }
}

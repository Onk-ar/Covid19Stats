//
//  ListTopbarView.swift
//  Covid19Stats
//
//  Created by Onkar Singh on 5/24/20.
//  Copyright © 2020 Onkar Singh. All rights reserved.
//

import SwiftUI

struct ListTopbarView: View {



    var body: some View {

        HStack {
            Text("Country")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 110, alignment: .leading)
                .padding(.leading, 15)

            Spacer()

            Text("Confirmed")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)

            Spacer()

            Text("Death")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)

            Spacer()

            Text("Recover")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.trailing, 15)
        }
        .background(Color("cardBackgroundGray"))

    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListTopbarView()
    }
}

//
//  TotalCardView.swift
//  Covid19Stats
//
//  Created by Onkar Singh on 5/24/20.
//  Copyright © 2020 Onkar Singh. All rights reserved.
//

import SwiftUI

struct TotalCardView: View {
    
    var number: String = "Error"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                
                Text(self.name)
                    .font(.subheadline)
                    .padding(5)
                    .foregroundColor(self.color)
                
                Text(self.number)
                    .font(.body)
                    .padding(5)
                    .foregroundColor(self.color)
                
            }//End of VStack
                .frame(width: geometry.size.width, height: 80, alignment: .center)
                .background(Color("cardBackgroundGray"))
                .cornerRadius(8.0)
            
        }//End of Geometry
        
    }
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalCardView()
    }
}

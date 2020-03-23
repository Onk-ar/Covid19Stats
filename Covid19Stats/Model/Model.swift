//
//  Model.swift
//  Covid19Stats
//
//  Created by Onkar Singh on 5/24/20.
//  Copyright © 2020 Onkar Singh. All rights reserved.
//

import Foundation
struct TotalData {
    
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}


struct CountryData {
    
    let country: String
    let confirmed: Int64
    let critical: Int64
    let deaths: Int64
    let recovered: Int64
    let longitude: Double
    let latitude: Double
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}

let testTotalData = TotalData(confirmed: 100, critical: 30, deaths: 20, recovered: 20)
let testCountryData = CountryData(country: "Test", confirmed: 30, critical: 10, deaths: 2, recovered: 10, longitude: 0.0, latitude: 0.0)

//
//  Extensions.swift
//  Covid19Stats
//
//  Created by Onkar Singh on 5/24/20.
//  Copyright © 2020 Onkar Singh. All rights reserved.
//

import Foundation
extension Int {
    
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
}

extension Int64 {

    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
}

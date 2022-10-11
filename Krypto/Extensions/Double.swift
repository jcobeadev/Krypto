//
//  Double.swift
//  Krypto
//
//  Created by Jco Bea on 10/2/22.
//

import Foundation

extension Double {

    private var currentFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        // formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }

    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }

    func toCurrency() -> String {
        return "$" + (currentFormatter.string(for: self) ?? "0.00")
    }

    func toPercentString() -> String {
        guard let numberAsString = numberFormatter.string(for: self) else { return "" }
        return numberAsString + "%"
    }

}

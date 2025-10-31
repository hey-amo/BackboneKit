//
//  String+Ext.swift
//  BackboneKit
//
//  Created by Amarjit on 31/10/2025.
//

import Foundation

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}

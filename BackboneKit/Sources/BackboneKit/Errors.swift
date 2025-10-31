//
//  CommonErrors.swift
//  BackboneKit
//
//  Created by Amarjit on 31/10/2025.
//

import Foundation

public enum IntegerError: Error {
    case isNegativeValue(_ value: Int)
    case insufficentFunds
}

extension IntegerError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .isNegativeValue(let value):
            return NSLocalizedString("Value \(value) cannot be negative)", comment: "IntegerError.isNegativeValue")
        case .insufficentFunds:
            return NSLocalizedString("Insufficent Funds", comment: "IntegerError.insufficentFunds")
        }
    }
}

public enum GameStateError: Error {
    case gsDoesNotExist
    case gsTransitionError
}

extension GameStateError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .gsDoesNotExist:
            return NSLocalizedString("Game state does not exist", comment: "gsDoesNotExist")
        case .gsTransitionError:
            return NSLocalizedString("Game state transition error", comment: "gsTransitionError")
        }
    }
}

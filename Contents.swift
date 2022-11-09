import UIKit

// MARK: - Properties

let bankNotesAvailable = (50, 10, 5, 2)
var totalBankNote = (0, 0, 0, 0)
var total: Int = 0

// MARK: - Functions

func withdrawWith(value: Int) {
    
    total = value
    
    while total > 0 {
        if total >= bankNotesAvailable.0 {
            total -= bankNotesAvailable.0
            totalBankNote.0 += 1
        } else if total >= bankNotesAvailable.1 {
            total -= bankNotesAvailable.1
            totalBankNote.1 += 1
        } else if total >= bankNotesAvailable.2 {
            total -= bankNotesAvailable.2
            totalBankNote.2 += 1
        } else if total >= bankNotesAvailable.3 {
            total -= bankNotesAvailable.3
            totalBankNote.3 += 1
        }
    }
    
    print("=== Retorno ===")
    print("\(totalBankNote.0) nota de 50, \(totalBankNote.1) nota de 10, \(totalBankNote.2) nota de 5, \(totalBankNote.3) nota de 2")
    
}

withdrawWith(value: 600)

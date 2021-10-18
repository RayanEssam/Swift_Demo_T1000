//
//  ClassAccount.swift
//  swift_demo_T1000
//
//  Created by Rayan Taj on 17/10/2021.
//

import Foundation


class bankAccount {
    
    var name : String
    private var _balance : Double = 0
    static var annualRate : Double = 0.04
    
    private(set) var balance : Double {
        
        set(newBalance) {
         _balance = newBalance
        }
        
        get {
            return _balance
        }
    }
    
    
    init(_ name: String ) {
        self.name = name
    }
    
    
    var getMonthlyRate: Double {
        Self.annualRate / 12
    }
    
    
    var getMnthlyIn: Double{
        
        getMonthlyRate * balance
        
    }
    
    
    func deposit(_ amount: Double)  {
        
        balance = balance + amount
        
    }
    
    func withdraw(_ amount: Double)  {
        balance = balance - amount
    }

    
    
    
    
    
}

//
//  ClassInhertanceAccount.swift
//  swift_demo_T1000
//
//  Created by Rayan Taj on 18/10/2021.
//

import Foundation
/*
 Account super class
    Withdraw function
 
 
 saving subclass
    override withdraw function - check the limit
    update init
 
 
 
 
 */

class SuperAccount {
  var name: String
  private var _balance: Double
  static var annualRate: Double = 0.04
  private(set) var balance: Double {
    get { _balance }
    set {
      _balance = newValue
    }
  }
  init(_ name: String, _ balance: Double) {
    self.name = name
    self._balance = balance
  }
  static var monthlyRate: Double {
    SuperAccount.annualRate / 12
  }
  var monthlyInt: Double {
      SuperAccount.monthlyRate * balance
  }
  func deposit(amount: Double) {
    balance += amount
  }
  func withdraw(amount: Double) {
    balance -= amount
  }
    
    
// Operator Overload
    public static func  += (account : SuperAccount , amount: Double) {
        account.deposit(amount: amount)
    }
    public static func  -= (account : SuperAccount , amount: Double) {
        account.withdraw(amount: amount)
    }
    
}


class SavingAccount: SuperAccount {
    
    var limit : Int
    
    
       init(_ name: String, _ balance: Double,  _ limit :Int) {
           
           self.limit = limit
           super.init(name, balance)

    }
    
    
    
    override func withdraw(amount: Double) {
        
        let myLimit: Double = balance + Double(limit)
    
        if amount  <= myLimit {
            
            super.withdraw(amount: amount)
            
        }else{
            print("You exceded th limit , the limit is  -" , myLimit, " and you tried to withdraw  \(amount)")
        }
                
    }
    
    
}

class checkingAccount: SuperAccount {
    
    
    
    override func withdraw(amount: Double) {
        if amount < balance {
            
            super.withdraw(amount: amount)
            
        }else{
            print(" the amount you try to withdraw is more than you have")
        }
    }
    
}

//
//  ExtensionDouble.swift
//  swift_demo_T1000
//
//  Created by Rayan Taj on 19/10/2021.
//

import Foundation


extension Double {
    
    
     func pow(input : Int) -> Double {
//        print(self)
        
        var temp  = self
        for _ in 1..<input {
           
           temp *= self
         
        }
        
        return temp
        
        
    }
    
}

//
//  Inhertance.swift
//  swift_demo_T1000
//
//  Created by Rayan Taj on 17/10/2021.
//

import Foundation


class Emp {
    
    var name : String
    var age : Int
    var salary :Int
    
    init(_ name: String , _ age: Int, _ salary: Int) {
        
        self.name=name
        self.age=age
        self.salary=salary
        
        
    }
    
    
    func takeDecsion()  {
        print(" \(name)  I take  a descion")
    }
    
    
}


class Manager: Emp {
    
   
    
    
    
    func manage()  {
        print("\(name)     I manage ")
    }
    
}


class Instructor: Emp {
    
  
    func teach()  {
        print("\(name)  I teach")
    }
    
    
}

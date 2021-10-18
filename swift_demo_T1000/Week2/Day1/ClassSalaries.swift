//
//  ClassSalaries.swift
//  swift_demo_T1000
//
//  Created by Rayan Taj on 17/10/2021.
//

import Foundation



class Employee {
    
    var name : String
    var salary: Int
    var hireYear: Int
    
    
    
    init(name: String , salary: Int, hireYear: Int) {
        self.name = name
        self.salary = salary
        self.hireYear = hireYear
        
    }
    
    
    func annualSalary ()-> Int{
        
        return salary * 12
        
        
    }
    
    func getServicePeriod() -> Int {
        
        let year = Calendar.current.component(.year, from: Date())
        
        return Int(year) - hireYear
        
    }
    
    
    
    
    
}

//
//  ClassCourse.swift
//  swift_demo_T1000
//
//  Created by Rayan Taj on 18/10/2021.
//

import Foundation


class Course {
    
    private var _title: String
    private var _price: Double
   private var _students: [String]
    
    
    init(_ title:String, _ price:Double) {
        self._title=title
        self._price = price
        self._students = []
    }
    

    var title : String {
        
        get {
            _title
        }
        
    }
    
    var price : Double {
        
        get {
            _price
        }
        
    }
    
    var students : [String] {
        
        get {
            _students
        }
        
    }
    
    
    func addStudent(studentName: String){
        _students.append(studentName)
    }
    
    func numberOfStudent()  {

        
        print(students.count)
    }
    
    
    func dropStudent(studentName : String) {
        
        
        print()
        
        _students = students.filter { $0 != studentName }
        
        
    }
    
    
    

    
    
    
}

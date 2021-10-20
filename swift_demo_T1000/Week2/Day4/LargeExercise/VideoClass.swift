//
//  VideoClass.swift
//  swift_demo_T1000
//
//  Created by Rayan Taj on 20/10/2021.
//

import Foundation


class Video : CustomStringConvertible  {
    
    
    var description: String {
        return "Video : \(_id) , \(_title) , \(_duration) , \(_category)"
        
        
    }
    
    
    private var _id :Int
    private var _title : String
    private var _duration :Int
    private var _category : Category
    
    
    var id :  Int {
        
        get {
            _id
        }
        
    }
    var category :  Category {
        
        get {
            _category
        }
        
    }
    var title :  String {
        
        get {
            _title
        }
        
    }
    
    
    
    init(_ id  : Int , _ title : String , _ duration : Int , _ category : Category) {
        self._id = id
        self._title = title
        self._duration = duration
        self._category = category
    }
    
    
    
}

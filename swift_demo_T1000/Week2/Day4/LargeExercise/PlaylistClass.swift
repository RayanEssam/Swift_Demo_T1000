//
//  PlaylistClass.swift
//  swift_demo_T1000
//
//  Created by Rayan Taj on 20/10/2021.
//

import Foundation

class PlayList : CustomStringConvertible  {
    var description: String {
        return "PlayList : \(_name) ,  \(_shared) ,  \(_videos.count)"
    }
    
    private var _name :String
    private var  _shared : Bool
    private var  _videos : [Video]
    
    init(_ name : String , _ shared :Bool) {
        self._name = name
        self._shared = shared
        _videos = []
    }
    
    var shared : Bool {
        get {
            _shared
        }
        set (newShared){
            _shared = newShared
        }
    }
    var name : String {
        get {
            _name
        }
    }
    
 
    
    var videos : [Video] {
        get {
            _videos
        }
        set (newVideos ){
            _videos = newVideos
        }
    }
    
    
    func addVideo(_ v : Video)-> Bool  {

        _videos.append(v)
        return true
        
//        do{
//            try   _videos.append(v)
//            return true
//        } catch is Error {
//            return false
//        }
      
      
        
    }
    
    
    func removeVideo(_ id :Int) -> Bool {
        
        let oldAraayCount = _videos.count
        
        _videos = _videos.filter {
            $0.id != id
        }
        
        if oldAraayCount == _videos.count {
            return false
        }else{
            return true
        }
   
    }
    
    
    func countVideos(_ category : Category) -> Int {
        // TO-DO
        // 1- count all the videos with a specific category type and return thier number
        
        var categoryCounter = 0
        for _video in _videos {
            if _video.category == category{
                categoryCounter += 1
            }
        }
        
        
        return  categoryCounter
    }
    
    
}

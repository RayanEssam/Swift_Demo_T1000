//
//  ChannelsClass.swift
//  swift_demo_T1000
//
//  Created by Rayan Taj on 20/10/2021.
//

import Foundation


class Channel : CustomStringConvertible  {
    var description: String {
        return "channel : \(name) , \(_playList.count)" 
    }
    
    
    private var _name  :String
    private var _playList : [PlayList]
    
    
    var name : String {
        get{
            _name
        }
    }
    
    var playList : [PlayList] {
        get {
            _playList
        }
    }
    
    
    init( _ name  :String) {
        self._name = name
        _playList = []
    }
    
    
    
    
    func addPlayList(_ p :PlayList) -> Bool {
        
        var tempPlayList = PlayList(p.name, p.shared)
        tempPlayList.videos = p.videos
        
        _playList.append(tempPlayList)
        
        return true
    }
    
    
    func deletePlayList(_ name :String) -> Bool {
        let oldAraayCount = _playList.count
        
        
        _playList = _playList.filter { $0.name != name }
        
        if oldAraayCount == _playList.count {
            return false
        }else{
            return true
        }
   
        
    }
    
    
    func flipSharedStatus(_ p  : PlayList) -> Bool {
        
   
        p.shared =   !p.shared
        
        return p.shared
    }
    
    
    func getPlayList(_ category : Category) -> PlayList {
        
        
        // TO-DO
        let myPlayList = PlayList("playlist \(category)", true)
        
        for element in _playList {
            
            for i in element.videos {
                
                if i.category == category {
                    myPlayList.addVideo(i)
                }
            }
            
            
        }
        
        
        return myPlayList
    }
    
    func sortPlayList()  {
 
        var tempArray = _playList.sorted(by: {
            $0.videos.count > $1.videos.count
        })
        
        for arr in tempArray {
            print(arr)
        }
        

        
    }
    
    
    
    
    
}



import Foundation

func countChar(_ sentence: String, _ ch: String) -> Int {
var counter = 0
//    var firstIndex = sentence.firstIndex(of: <#String.Element#>)

    for (index , item) in sentence.enumerated(){
        
//        print(item)
        if Character(extendedGraphemeClusterLiteral: item) == Character(ch) {
            counter+=1
        }
        
    }


    return counter
    
    
    
}

print(countChar("Heleeeeelo", "e"))

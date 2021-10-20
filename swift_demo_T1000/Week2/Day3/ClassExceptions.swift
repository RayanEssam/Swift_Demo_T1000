//
//  ClassExceptions.swift
//  swift_demo_T1000
//
//  Created by Rayan Taj on 20/10/2021.
//

import Foundation



class CapitalfirstLetter : Error {
    
}
class NumberOfCharacters : Error {
    
}
class FirstLetterIsNotNumber : Error {
    
}



func checkPassword(password: String) throws{
    let  x = password[password.startIndex]
    print(x.isUppercase)
     
    if(password[password.startIndex].isNumber == false){
        
        if( password.count  >= 8 ){
            
            if password[password.startIndex].isUppercase{
                
                print("Your password is qualified")
                
            }else{
                let err = CapitalfirstLetter()
                throw err
            }
            
        }else{
            
            let err = NumberOfCharacters()
            throw err
        }
    }else{
        let err = FirstLetterIsNotNumber()
        throw err
    }
    
}




import Foundation



func bmiCalculate(wehight : Double , height : Double) -> Double {
    
    return wehight / pow(height/100, 2)
    
}


func healthStatus (bmi: Double) -> String {
    
    
    switch bmi{
    case 0..<18.5 :
        return "under wehight"
    case 18.5..<25 :
        return "normal"
    case 25..<30 :
        return "over wehight"
    default:
        return "Obese"
    }
    
    
}


func isPalindrom (text:String) -> Bool {
    
 
    let length = text.count
    let indexStart = text.startIndex
//    var indexEnd = text.endIndex
    var counter = 0
    var counter2 = length-1

    var isPal = true
    while  counter2 >= 0 && counter < text.count {

    //   print(test[test.index(indexStart, offsetBy: counter)]  , terminator: "\t")
    //    print(test[test.index(indexStart, offsetBy: counter2)])
        
        let x = text[text.index(indexStart, offsetBy: counter)]
        let y = text[text.index(indexStart, offsetBy: counter2)]
      
        if x != y {
            isPal=false
           break
       
        }
       
        counter+=1
        counter2-=1
       
    }
    
    return isPal
    
}



func isPrime (number: Int) -> Bool{
    
    for div in 2..<number{
        if number % div == 0 {
            return false
            
        }
    }
    
    
    return true
}


func printPrimes (limit: Int){
     var number = 2
    var printCounter = 0
    
    while printCounter < limit {
    
        if  isPrime(number: number) {
            print(number , terminator: "\t")
         
            printCounter+=1
        }
        number+=1
    }
    
}

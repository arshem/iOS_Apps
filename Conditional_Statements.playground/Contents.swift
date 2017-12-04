
import UIKit

func loveCalculator(yourName : String, otherName : String) -> String {
    let loveScore = Int(arc4random_uniform(101))
    if loveScore > 80 {
        return "Your lovescore is \(loveScore)%. You're in love!"
    }
    else if loveScore >= 40 && loveScore <= 80{
        return "Your lovescore is \(loveScore)%. It might be love"
    }
    else {
        return "Your lovescore is \(loveScore)%. SOL Buddy!"
    }
    //return loveScore
}

print(loveCalculator(yourName: "brandon wright", otherName: "angela yu"))

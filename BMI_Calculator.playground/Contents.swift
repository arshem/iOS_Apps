//: BMI Calculator
// Arshem Web Solutions
// www.arshem.com

import UIKit

func BMI(height : Float,weight : Float) -> String {
    let bmi : Float
    bmi = (weight / pow(height,2))
    if(bmi > 25) {
        return "BMI: \(bmi). You should go on a diet"
    }
    else if(bmi >= 18.5 && bmi <= 25) {
        return "BMI: \(bmi). You're fit as a bug!"
    }
    else {
        return "BMI: \(bmi). You need to eat!"
    }
}

print(BMI(height: 1.8034, weight: 128.367))

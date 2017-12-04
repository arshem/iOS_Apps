// Fibonacci Numbers
// Arshem Web Solutions
// www.arshem.com

import UIKit

func fibonnaci(until : Int) {
    print(0)
    print(1)
    var num1 = 0
    var num2 = 1

    for _ in 1...until {
        let num = num1 + num2
        print(num)
        num1 = num2
        num2 = num
    }
}

fibonnaci(until: 30)

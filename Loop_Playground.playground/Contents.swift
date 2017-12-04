//: Learning "For Loops"
// Arshem Web Solutions
// www.arshem.com

import UIKit

//let nums = [1,3,5,7,11,13,15,17]
//
////Blarg
//var sum = 0
//
////For In Loop
//for number in nums {
//    sum += number
//}
//
//print(sum)
//
//for number in 1...10 {
//    // This will run 10 times
//}
//
//for number in 1...10 where number % 2 == 0 {
//    // If number is divisible by 2 this will run
//}

/*
 Old Beer Song before learning about .reversed()
 var numOfBeer = 100
 for beer in 1...numOfBeer {
 var newNumOfBeer = numOfBeer-beer
 if(newNumOfBeer != 0) {
 print("\(newNumOfBeer) bottles of beer on the wall. \(newNumOfBeer) bottles of beer. Take one down, pass it around, \(newNumOfBeer-1) bottles of beer on the wall.")
 } else {
 print("No more bottles of beer on the wall. No more bottles of beer. 😞")
 
 }
 }
*/

for beer in (1...99).reversed() {
    print("\(beer) bottles of beer on the wall. \(beer) bottles of beer. Take one down, pass it around, \(beer-1) bottles of beer on the wall.")
}
print("No more bottles of beer on the wall. No more bottles of beer. :(")


import UIKit

let oddDigits: Set = [1, 3, 5, 7, 9, 3]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print ("oddDigits union evenDigits => \(oddDigits.union(evenDigits).sorted())")
print ("oddDigits intersection evenDigits => \(oddDigits.intersection(evenDigits).sorted())")
print ("oddDigits subtracting evenDigits => \(oddDigits.subtracting(evenDigits).sorted())")
print ("oddDigits symmetricDifference evenDigits => \(oddDigits.symmetricDifference(evenDigits).sorted())")

/**
 oddDigits union evenDigits => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
 oddDigits intersection evenDigits => []
 oddDigits subtracting evenDigits => [1, 3, 5, 7, 9]
 oddDigits symmetricDifference evenDigits => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
 
 */


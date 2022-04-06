//
//  BinarySearch.swift
//  
//
//  Created by Cleber Neitzke on 05/04/22.
//

//    let numbers = [1,5,15,17,19,22,24,31,105,150]
//    print(numbers.containsUsingBinarySearch(99))

import Foundation

extension Array where Iterator.Element == Int {
    
    func containsUsingBinarySearch(_ value :Int) -> Bool {
        var lowerBound = 0
        var upperBound = self.count - 1
        var middle = 0
        var found = false
        
        while(lowerBound <= upperBound) {
            // find the middle of the array
            middle = (lowerBound + upperBound) / 2
            if(numbers[middle] == value) {
                found = true
                break
            } else if(numbers[middle] < value) {
                lowerBound = middle + 1
            } else {
                upperBound = middle - 1
            }
        }
        return found
    }
}




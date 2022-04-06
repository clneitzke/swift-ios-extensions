//
//  InsertionSort.swift
//
//  Created by Cleber Neitzke on 05/04/22.
//

//    var numbers = [12,34,66,9,99,2,1,5,6]
//    print(numbers)

import Foundation

func insertionSort(numbers: [Int]) { // O(n^2)
    for i in 0..<numbers.count {
        
        let key = numbers[i] // 9
        var j = i - 1 // 2
        
        while(j >= 0 && numbers[j] > key) {
            numbers[j+1] = numbers[j]
            j = j - 1
        }
        numbers[j + 1] = key
    }
}


//
//  BubbleSort.swift
//  
//  Created by Cleber Neitzke on 05/04/22.
//

//
//    var numbers = [2,6,7,19,11,45,99,23,56,78,9]
//
//    print("Array before sorted")
//    print(numbers)
//    bubbleSort(numbers)
//
//    print("Array after sorted")
//    print(numbers)
//

import Foundation

func bubbleSort(numbers: [Int]) { // O(nˆ2)
    for i in 0..<numbers.count {
        for j in 0..<numbers.count {
            if(numbers[i] < numbers[j]) {
                numbers.swapAt(i, j)
                // swap the numbers
                //let temp = numbers[i]
                //numbers[i] = numbers[j]
                //numbers[j] = temp
            }
        }
    }
}


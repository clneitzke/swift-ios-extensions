//
//  SelectionSort.swift
//
//  Created by Cleber Neitzke on 05/04/22.
//

//
//    var numbers = [2,6,7,19,11,45,99,23,56,78,9]
//
//    print("Array before sorting")
//    print(numbers)
//
//    var minIndex = 0
//    selectionSort(numbers)
//    print("Array after sorted")
//    print(numbers)
//

import Foundation

func selectionSort(numbers: [Int]) { // O(nˆ2)
    for i in 0..<numbers.count {
        minIndex = i
        for j in (i+1)..<numbers.count {
            if(numbers[j] < numbers[minIndex]) {
                minIndex = j
            }
            numbers.swapAt(i, minIndex)
            
            // swap the values
            //let temp = numbers[i]
            //numbers[i] = numbers[minIndex]
            //numbers[minIndex] = temp
            
        }
    }
}

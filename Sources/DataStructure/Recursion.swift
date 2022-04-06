//
//  Recursion.swift
//  
//  Created by Cleber Neitzke on 05/04/22.
//

// 2^3 = 2 * 2 * 2 = 8
// print(power(number: 2, n: 3))

import Foundation

func power(number :Int, n :Int) -> Int {
    
    if n == 0 {
        return 1
    } else {
        return number * power(number: number, n: n - 1)
    }
}


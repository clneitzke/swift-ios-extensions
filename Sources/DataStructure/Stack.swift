//
//  Stack.swift
//
//  Created by Cleber Neitzke on 05/04/22.
//

//    var stack = Stack<Int>()
//    stack.push(20)
//    stack.push(10)
//    stack.push(3)
//    stack.push(99)
//
//    print("before popping")
//    print(stack)
//
//    print("after popping")
//    stack.pop()
//    print(stack)

import Foundation

struct Stack<Element> {
    
    private var storage :[Element] = []
    
    init() {}
    
    mutating func push(_ element :Element) {
        storage.append(element)
    }
    
    mutating func pop() -> Element? {
        return storage.popLast()
    }
}

extension Stack :CustomStringConvertible {
    
    var description :String {
        
        let topDivider = "------top------\n"
        let bottomDivider = "\n----------"
        
        let stackElements = storage.map { "\($0)"}.reversed().joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
    
}


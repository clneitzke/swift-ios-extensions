//
//  BinaryTree.swift
//  
//  Created by Cleber Neitzke on 05/04/22.
//

//
//         10
//       /    \
//      9      2
//     / \    / \
//    1  3   4   6
//
//    let ten = BinaryNode(10)
//    let nine = BinaryNode(9)
//    let two = BinaryNode(2)
//    let one = BinaryNode(1)
//    let three = BinaryNode(3)
//    let four = BinaryNode(4)
//    let six = BinaryNode(6)
//
//    ten.leftChild = nine
//    ten.rightChild = two
//    nine.leftChild = one
//    nine.rightChild = three
//    two.leftChild = four
//    two.rightChild = six
//
//    ten.traverseInOrder {     // 1 9 3 10 4 2 6
//        print($0)
//    }
//
//    ten.traversePostOrder {   // 1 3 9 4 6 2 10
//        print($0)
//    }
//
//    ten.traversePreOrder {    // 10 9 1 3 2 4 6
//        print($0)
//    }


import Foundation

class BinaryNode<Element> {
    
    var value :Element
    var leftChild :BinaryNode?
    var rightChild :BinaryNode?
    
    init(_ value :Element) {
        self.value = value
    }
    
}

extension BinaryNode {
    
    func traversePostOrder(visit :(Element) -> Void) {
        /// recursive
        leftChild?.traversePostOrder(visit: visit)
        rightChild?.traversePostOrder(visit: visit)
        visit(value)
    }
    
    func traverseInOrder(visit :(Element) -> Void) {
        /// recursive
        leftChild?.traverseInOrder(visit: visit)
        visit(value)
        rightChild?.traverseInOrder(visit: visit)
    }
    
    func traversePreOrder(visit: (Element) -> Void) {
        /// recursive
        visit(value)
        leftChild?.traversePreOrder(visit: visit)
        rightChild?.traversePreOrder(visit: visit)
    }
    
}


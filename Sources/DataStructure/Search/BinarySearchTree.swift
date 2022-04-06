//
//  BinarySearchTree.swift
//
//  Created by Cleber Neitzke on 05/04/22.
//

//    var bst = BinarySearchTree<Int>()
//    bst.insert(3)
//    bst.insert(1)
//    bst.insert(4)
//    bst.insert(0)
//    bst.insert(2)
//    bst.insert(5)
//
//    print(bst)
//
//        3
//       / \
//      1   4
//     / \   \
//    0   2   5
//
//    print(bst.contains(99))
//
//     ┌──5
//     ┌──4
//     │ └──nil
//     3
//     │ ┌──2
//     └──1
//     └──0
//

import Foundation


// MARK: - BinaryNode
class BinaryNode<Element> {
    var value: Element
    var leftChild: BinaryNode?
    var rightChild: BinaryNode?
    
    init(value: Element) {
        self.value = value
    }
    
    var min: BinaryNode {
        return leftChild?.min ?? self
    }
    
}

// print
extension BinaryNode: CustomStringConvertible {
    public var description: String {
        return diagram(for: self)
    }
    private func diagram(for node: BinaryNode?, _ top: String = "", _ root: String = "", _ bottom: String = "") -> String {
        guard let node = node else {
            return root + "nil\n"
        }
        if node.leftChild == nil && node.rightChild == nil {
            return root + "\(node.value)\n"
        }
        return diagram(for: node.rightChild, top + " ", top + "┌──", top + "│ ")
    } }

// MARK: - BinarySearchTree
struct BinarySearchTree<Element :Comparable> {
    private(set) var root :BinaryNode<Element>?
    init() { }
}

// print
extension BinarySearchTree: CustomStringConvertible {
    var description: String {
        guard let root = root else { return "Empty tree" }
        return String(describing: root)
        
    }
}

extension BinarySearchTree {
    
    // Remove
    mutating func remove(_ value: Element) {
        root = remove(node: root, value: value)
    }
    
    private func remove(node: BinaryNode<Element>?, value: Element) -> BinaryNode<Element>? {
        
        guard let node = node else {
            return nil
        }
        
        if value == node.value {
            if node.leftChild == nil && node.rightChild == nil { // leaf
                return nil
            }
            
            if node.leftChild == nil {
                return node.rightChild
            }
            
            if node.rightChild == nil {
                return node.leftChild
            }
            
            node.value = node.rightChild!.min.value // ! Important - replace node with smaller number on that subtree
            node.rightChild = remove(node: node.rightChild, value: node.value)
            
        } else if value < node.value {
            node.leftChild = remove(node: node.leftChild, value: value)
        } else {
            node.rightChild = remove(node: node.rightChild, value: value)
        }
        
        return node
    }
    
    // Insert
    mutating func insert(_ value: Element) {
        root = insert(from: root, value: value)
    }
    
    private func insert(from node: BinaryNode<Element>?, value: Element) -> BinaryNode<Element> {
        
        guard let node = node else { // if empty
            return BinaryNode(value: value)
        }
        
        if value < node.value {
            node.leftChild = insert(from: node.leftChild, value: value)
        } else {
            node.rightChild = insert(from: node.rightChild, value: value)
        }
        
        return node
        
    }
    
    // Seach
    func contains(_ value: Element) -> Bool {
        var current = root
        
        while let node = current {
            if node.value == value {
                return true
            }
            
            if value < node.value {
                current = node.leftChild
            } else {
                current = node.rightChild
            }
            
        }
        
        return false
    }
}


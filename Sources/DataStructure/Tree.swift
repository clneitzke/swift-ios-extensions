//
//  Tree.swift
//
//  Created by Cleber Neitzke on 05/04/22.
//

//    let beverages = TreeNode("Beverages")
//
//    let hot = TreeNode("Hot")
//    let cold = TreeNode("Cold")
//
//    let tea = TreeNode("Tea")
//    let coffee = TreeNode("Coffee")
//
//    hot.add(tea)
//    hot.add(coffee)
//
//    let soda = TreeNode("Soda")
//    let milk = TreeNode("Milk")
//
//    cold.add(soda)
//    cold.add(milk)
//
//    beverages.add(hot)
//    beverages.add(cold)
//
//    let searchResult = beverages.search("Soda")
//    print(searchResult.value)
//
//    if let searchResult = beverages.search("Milk") {
//        print(searchResult.value)
//    }
//
//    // !! Level Order Transversal   / Bev -> Hot -> Cold -> T -> C -> S -> M
//
//    beverages.forEachLevelOrder {
//        print($0.value)
//    }
//
//    // !! Deep First Tranversal !!  / Bev -> Hot -> T -> C -> Cold -> S -> M
//
//    beverages.forEachDepthFirst {
//        print($0.value)
//    }
//
//        Beverages
//        /      \
//       /        \
//     hot       cold
//     / \        / \
//    /   \      /   \
//  tea coffee soda milk
//


import Foundation

struct Queue<Element> {
    var elements :[Element] = []
    
    @discardableResult
    mutating func enqueue(_ value :Element) -> Bool {
        elements.append(value)
        return true
    }
    
    var isEmpty :Bool {
        return elements.isEmpty
    }
    
    mutating func dequeue() -> Element? {
        return isEmpty ? nil : elements.removeFirst()
    }
    
}

class TreeNode<T>  {
    
    var value :T
    var children :[TreeNode] = []
    
    init(_ value :T) {
        self.value = value
    }
    
    func add(_ child :TreeNode) {
        self.children.append(child)
    }
    
}

extension TreeNode where T: Equatable {
    
    func forEachDepthFirst(_ visit :(TreeNode) -> Void) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit)
        }
        
    }
    
    func forEachLevelOrder(_ visit: (TreeNode) -> Void) {
        visit(self)
        var queue = Queue<TreeNode>()
        children.forEach {
            queue.enqueue($0)
        }
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach { queue.enqueue($0) }
        }
        
    }
    
    func search(_ value: T) -> TreeNode? {
        var result: TreeNode?
        
        forEachLevelOrder { node in
            if node.value == value {
                result = node
            }
            
        }
        return result
    }
    
}


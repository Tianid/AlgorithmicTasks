//
//  SwapNodesInPairs.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 18.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Swap Nodes in Pairs
 Given a linked list, swap every two adjacent nodes and return its head.

 You may not modify the values in the list's nodes, only nodes itself may be changed.

  

 Example:

 Given 1->2->3->4, you should return the list as 2->1->4->3.
 
 https://leetcode.com/problems/swap-nodes-in-pairs/
 */

import Foundation

class SwapNodesInPairs {
    func start() {
        let d = ListNode(4)
        let c = ListNode(3, d)
        let b = ListNode(2, c)
        let a = ListNode(1, b)
        ListNode.printList(head: swapPairs(a))
    }
    
    private func swapPairs(_ head: ListNode?) -> ListNode? {
        let stub = ListNode()
        stub.next = head
        
        var curent = stub.next
        var next: ListNode?
        var prev = stub
        
        while curent != nil && curent?.next != nil {

            next = curent?.next
            let nextNext = curent?.next?.next
            
            prev.next = next
            next?.next = curent
            curent?.next = nextNext
            
            prev = curent!
            curent = nextNext
            
            
        }
        
        
        
        return stub.next
    }
}

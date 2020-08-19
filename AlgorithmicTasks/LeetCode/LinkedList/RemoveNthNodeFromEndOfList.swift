//
//  RemoveNthNodeFromEndOfList.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 19.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 
 Remove Nth Node From End of List
 Given a linked list, remove the n-th node from the end of list and return its head.

 Example:

 Given linked list: 1->2->3->4->5, and n = 2.

 After removing the second node from the end, the linked list becomes 1->2->3->5.
 Note:

 Given n will always be valid.

 Follow up:

 Could you do this in one pass?
 
 https://leetcode.com/problems/remove-nth-node-from-end-of-list/
 */

import Foundation


class RemoveNthNodeFromEndOfList {
    func start() {
        let g = ListNode(7)
        let f = ListNode(6, g)
        let e = ListNode(5, f)
        let d = ListNode(4, e)
        let c = ListNode(3, d)
        let b = ListNode(2, c)
        let a = ListNode(1, b)
        ListNode.printList(head: removeNthFromEnd(a, 1))
    }
    
    private func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var nodeCount = 0
        let stub: ListNode? = ListNode()
        stub?.next = head
        
        var curent = stub
        var curentI = 0
        
        
        while curent?.next != nil {
            nodeCount += 1
            curent = curent?.next
        }
        
        curentI = 0
        curent = stub
        
        while curent?.next != nil {
            if curentI == nodeCount - n {
                curent?.next = curent?.next?.next
            }
            curentI += 1
            curent = curent?.next
            
        }
        
        return stub?.next
    }
}

//MARK: - More interesting solution
/*
 
        let dummy = ListNode(0)
        dummy.next = head
        var prev: ListNode? = dummy
        var post: ListNode? = dummy
        
        // move post
        for _ in 0..<n {
            post = post!.next
        }
        
        // move prev and post at the same time
        while post!.next != nil {
            prev = prev!.next
            post = post!.next
        }
        
        prev!.next = prev!.next!.next
        
        return dummy.next
 */

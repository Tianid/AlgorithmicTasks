//
//  RemoveDuplicatesFromSortedListII.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 19.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Remove Duplicates from Sorted List II
 Given a sorted linked list, delete all nodes that have duplicate numbers, leaving only distinct numbers from the original list.

 Return the linked list sorted as well.

 Example 1:

 Input: 1->2->3->3->4->4->5
 Output: 1->2->5
 Example 2:

 Input: 1->1->1->2->3
 Output: 2->3
 
 https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/
 */

import Foundation

class RemoveDuplicatesFromSortedListII {
    func start() {
        let g = ListNode(1)
        let f = ListNode(1, g)
        let e = ListNode(1, f)
        let d = ListNode(1, e)
        let c = ListNode(1, d)
        let b = ListNode(1, c)
        let a = ListNode(1, b)
        ListNode.printList(head: deleteDuplicates(a))
    }
    
    private func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        let stub: ListNode? = ListNode()
        stub?.next = head
        
        var curent = stub
        
        while curent?.next != nil {
            if curent?.next?.val == curent?.next?.next?.val {
                let val = curent?.next?.val
                
                while curent?.next != nil && curent?.next?.val == val {
                    curent?.next = curent?.next?.next
                }
            } else {
                curent = curent?.next
            }
        }
        return stub?.next
    }
}

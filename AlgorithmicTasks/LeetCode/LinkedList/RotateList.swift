//
//  OddEvenLinkedList.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 19.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Rotate List
 Given a linked list, rotate the list to the right by k places, where k is non-negative.

 Example 1:

 Input: 1->2->3->4->5->NULL, k = 2
 Output: 4->5->1->2->3->NULL
 Explanation:
 rotate 1 steps to the right: 5->1->2->3->4->NULL
 rotate 2 steps to the right: 4->5->1->2->3->NULL
 Example 2:

 Input: 0->1->2->NULL, k = 4
 Output: 2->0->1->NULL
 Explanation:
 rotate 1 steps to the right: 2->0->1->NULL
 rotate 2 steps to the right: 1->2->0->NULL
 rotate 3 steps to the right: 0->1->2->NULL
 rotate 4 steps to the right: 2->0->1->NULL
 
 https://leetcode.com/problems/rotate-list/
 */

import Foundation

class RotateList {
    func start() {
        let e = ListNode(5)
        let d = ListNode(4, e)
        let c = ListNode(3, d)
        let b = ListNode(2, c)
        let a = ListNode(1, b)
        ListNode.printList(head: rotateRight(a, 3))
    }
    
    private func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        
        var prev  = head
        var curent = head
        
        let len = getLenght(head)
        
        guard len != 0 else { return head }
        var k = k % len

        
        while k > 0 {
            curent = curent?.next
            k -= 1
        }
        
        while curent?.next != nil {
            prev = prev?.next
            curent = curent?.next
        }
        
        curent?.next = head
        curent = prev?.next
        prev?.next = nil
        
        
        return curent
    }
    
    private func getLenght(_ head: ListNode?) -> Int {
        var curent = head
        var count = 0
        
        while curent != nil {
            count += 1
            curent = curent?.next
        }
        
        return count
    }
}

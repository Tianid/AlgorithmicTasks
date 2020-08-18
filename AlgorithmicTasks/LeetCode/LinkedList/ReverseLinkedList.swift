//
//  ReverseLinkedList.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 18.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//


/*
 
 Reverse Linked List
 Reverse a singly linked list.

 Example:

 Input: 1->2->3->4->5->NULL
 Output: 5->4->3->2->1->NULL
 Follow up:

 A linked list can be reversed either iteratively or recursively. Could you implement both?
 https://leetcode.com/problems/reverse-linked-list/
 */
import Foundation

class ReverseLinkedList {
    func start() {
        let d = ListNode(4)
        let c = ListNode(3, d)
        let b = ListNode(2, c)
        let a = ListNode(1, b)
        ListNode.printList(head: reverseList(a))
        
    }
    
    private func reverseList(_ head: ListNode?) -> ListNode? {
        var next: ListNode? = nil
        var curent = head
        var prev: ListNode? = nil
        
        while curent != nil {
            next = curent?.next
            curent?.next = prev
            prev = curent
            curent = next
        }
        return prev
    }
}

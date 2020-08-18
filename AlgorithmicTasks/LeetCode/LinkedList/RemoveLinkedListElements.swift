//
//  RemoveLinkedListElements.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 18.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Remove Linked List Elements
 Remove all elements from a linked list of integers that have value val.

 Example:

 Input:  1->2->6->3->4->5->6, val = 6
 Output: 1->2->3->4->5
 https://leetcode.com/problems/remove-linked-list-elements/
 */

import Foundation


class RemoveLinkedListElements {
    func start() {
        let f = ListNode(6)
        let e = ListNode(4,f)
        let d = ListNode(4,e)
        let c = ListNode(6, d)
        let b = ListNode(2, c)
        let a = ListNode(1, b)
        ListNode.printList(head: removeElements(a, 6))
    }
    
    private func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let stub = ListNode()
        stub.next = head
        var curent: ListNode? = stub
        
        var prev: ListNode? = nil
        var next: ListNode? = nil
        
        while curent != nil {
            if curent?.val == val {
                next = curent?.next
                prev?.next = next
                curent = next
                continue
            }
            prev = curent
            curent = curent?.next
        }
        return stub.next
    }
}

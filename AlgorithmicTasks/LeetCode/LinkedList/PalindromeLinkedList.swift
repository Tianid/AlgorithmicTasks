//
//  PalindromeLinkedList.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 18.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//


/*
 Palindrome Linked List
 Given a singly linked list, determine if it is a palindrome.

 Example 1:

 Input: 1->2
 Output: false
 Example 2:

 Input: 1->2->2->1
 Output: true
 Follow up:
 Could you do it in O(n) time and O(1) space?
 https://leetcode.com/problems/palindrome-linked-list/
 */
import Foundation

class PalindromeLinkedList {
    func start() {
        let d = ListNode(1)
         let c = ListNode(2, d)
         let b = ListNode(2, c)
         let a = ListNode(1, b)
         print(isPalindrome(a))
    }
    
    private func isPalindrome(_ head: ListNode?) -> Bool {
        var curent = head
        var values = [Int?]()
        
        while curent != nil {
            values.append(curent?.val)
            curent = curent?.next
        }
       
        
        return values == values.reversed()
        
    }
}

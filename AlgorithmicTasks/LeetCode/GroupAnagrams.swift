//
//  GroupAnagrams.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 14.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Group Anagrams
 Given an array of strings, group anagrams together.

 Example:

 Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
 Output:
 [
   ["ate","eat","tea"],
   ["nat","tan"],
   ["bat"]
 ]
 Note:

 All inputs will be in lowercase.
 The order of your output does not matter.
 
 https://leetcode.com/problems/group-anagrams/
 */

import Foundation

class GroupAnagrams {
    func start() {
        
//        print(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))
        print(groupAnagrams(["C","C"]))
    }

    func groupAnagrams(_ strs: [String]) -> [[String]] {
          var sortedStrToStrs = [String: [String]]()
    
          for str in strs {
              let sortedStr = String(str.sorted())
              
              sortedStrToStrs[sortedStr, default: []].append(str)
          }
          return Array(sortedStrToStrs.values)
      }
}

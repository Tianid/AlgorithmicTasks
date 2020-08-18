//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 17.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//


/*
 Longest Substring Without Repeating Characters
 Given a string, find the length of the longest substring without repeating characters.

 Example 1:

 Input: "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 Example 2:

 Input: "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 Example 3:

 Input: "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
              Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 https://leetcode.com/problems/longest-substring-without-repeating-characters/
 */
import Foundation

class LongestSubstringWithoutRepeatingCharacters {
    func start() {
        print(lengthOfLongestSubstring("abcabcbb"))
        print(lengthOfLongestSubstring("bbbbb"))
        print(lengthOfLongestSubstring("pwwkew"))
        print(lengthOfLongestSubstring(" "))
        print(lengthOfLongestSubstring("dvdf"))
        print(lengthOfLongestSubstring("anviaj"))
        
        
    }
    
    private func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLen = 0, startIdx = 0, charToPos = [Character: Int]()
        let sChars = Array(s)
        
        for (i, char) in sChars.enumerated() {
            if let pos = charToPos[char] {
                startIdx = max(startIdx, pos)
            }
            
            // update to next valid position
            charToPos[char] = i + 1
            maxLen = max(maxLen, i - startIdx + 1)
        }
        
        return maxLen
    }
}

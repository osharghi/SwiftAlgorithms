//
//  FindCommonChars.swift
//  
//
//  Created by Omid Sharghi on 5/28/19.
//
//  1002. Find Common Characters
//  https://leetcode.com/problems/find-common-characters/


import Foundation

class Solution {
    func commonChars(_ A: [String]) -> [String] {
        
        var results : [String] = Array()
        var charCount: [[Int]] = Array()
        
        for word in A
        {
            var count: [Int] = getCount(word: word)
            charCount.append(count)
        }
        
        for i in 0..<26
        {
            var min = Int.max
            
            for count in charCount
            {
                if(count[i]<min)
                {
                    min = count[i]
                }
            }
            
            if(min>0)
            {
                for _ in 0..<min
                {
                    results.append(String(UnicodeScalar(i + 97)!))
                }
            }
        }
        
        return results
    }
    
    func getCount(word: String) -> [Int]
    {
        var count : [Int] = Array(repeating: 0, count: 26)
        for char in word
        {
            var c = String(char)
            let startingValue = Int(("a" as UnicodeScalar).value)
            let endingValue = Int(UnicodeScalar(c)!.value)
            var index = endingValue - startingValue
            count[index] = count[index] + 1
        }
        
        return count
    }
}

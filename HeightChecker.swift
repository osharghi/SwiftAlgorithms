//
//  HeightChecker.swift
//  
//
//  Created by Omid Sharghi on 5/28/19.
//
//  1051. Height Checker
//  https://leetcode.com/problems/height-checker/

import Foundation

class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        
        var count = 0
        
        var digitCount : [Int] = Array(repeating: 0, count: 101)
        var mirrorHeights: [Int] = Array(repeating: 0, count: heights.count)
        
        for i in 0..<heights.count
        {
            digitCount[heights[i]] = digitCount[heights[i]] + 1
        }
        
        var j = 0
        
        for i in 0..<digitCount.count
        {
            if(digitCount[i] != 0)
            {
                for k in j..<j+digitCount[i]
                {
                    mirrorHeights[k] = i
                }
                j = j + digitCount[i]
            }
        }
        
        for i in 0..<heights.count
        {
            if(mirrorHeights[i] != heights[i])
            {
                count += 1
            }
        }
        
        return count
    }
}

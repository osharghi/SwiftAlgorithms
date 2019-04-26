//
//  FairCandySwap.swift
//  
//
//  Created by Omid Sharghi on 4/26/19.
//
//  888. Fair Candy Swap
//  https://leetcode.com/problems/fair-candy-swap/

import Foundation

class Solution {
    func fairCandySwap(_ A: [Int], _ B: [Int]) -> [Int] {
        
        var result : [Int] = Array(repeating:0, count:2)
        
        var sb: Int = 0
        var sa: Int = 0
        var setB = Set<Int>()
        
        
        for x in A
        {
            sa += x
        }
        
        for x in B
        {
            sb += x
            setB.insert(x)
        }
        
        for x in A
        {
            
            var delta = (sb-sa)/2 + x
            
            if(setB.contains(delta))
            {
                result[0] = x
                result[1] = delta
                break;
            }
        }
        
        return result
    }
}

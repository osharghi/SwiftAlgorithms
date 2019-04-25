//
//  TownJudge.swift
//  
//
//  Created by Omid Sharghi on 4/25/19.
//

import Foundation

class Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        
        var arr : [Bool] = Array(repeating: false, count: N+1)
        var count: [Int] = Array(repeating: 0, count: N+1)
        
        for i in 0..<trust.count
        {
            var pair = trust[i]
            arr[pair[0]] = true
            count[pair[1]] = count[pair[1]] + 1
        }
        
        var judge = -1
        
        for i in 1..<arr.count
        {
            if(!arr[i])
            {
                if(judge != -1)
                {
                    return -1
                }
                else
                {
                    judge = i
                }
            }
        }
        
        for i in 1..<count.count
        {
            if(i == judge)
            {
                if(count[i] == N-1)
                {
                    return judge
                }
                else
                {
                    judge = -1
                }
            }
        }
        
        return judge
    }
}

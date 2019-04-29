//
//  KClosestPointsToOrigin.swift
//  
//
//  Created by Omid Sharghi on 4/29/19.
//
//  973. K Closest Points to Origin
//  https://leetcode.com/problems/k-closest-points-to-origin/

import Foundation

class Solution {
    func kClosest(_ points: [[Int]], _ K: Int) -> [[Int]] {
        
        var distances: [Int] = Array(repeating:0, count: points.count)
        
        for i in 0..<points.count
        {
            var point = points[i]
            
            var x = point[0]
            var y = point[1]
            
            x = x*x
            y = y*y
            
            var total = x+y
            
            distances[i] = total
        }
        
        distances.sort()
        var maxDistance = distances[K-1]
        
        var results : [[Int]] = Array(repeating: Array(repeating: 0, count: 2) , count: K)
        var j = 0
        
        for i in 0..<points.count
        {
            var point = points[i]
            
            var x = point[0]
            var y = point[1]
            
            x = x*x
            y = y*y
            
            var total = x+y
            
            if(total<=maxDistance)
            {
                results[j] = point
                j = j+1
            }
        }
        
        return results
    }
}

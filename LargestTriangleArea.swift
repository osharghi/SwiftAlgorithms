//
//  LargestTriangleArea.swift
//  
//
//  Created by Omid Sharghi on 5/29/19.
//
//  812. Largest Triangle Area
//  https://leetcode.com/problems/largest-triangle-area/

import Foundation

class Solution {
    func largestTriangleArea(_ points: [[Int]]) -> Double {
        
        var max = Double(Int.min)
        
        for i in 0..<points.count-2
        {
            for j in i+1..<points.count-1
            {
                for k in j+1..<points.count
                {
                    
                    var p1 = points[i]
                    var p2 = points[j]
                    var p3 = points[k]
                    
                    var a = getDistance(p1: p1, p2: p2)
                    var b = getDistance(p1: p2, p2: p3)
                    var c = getDistance(p1: p1, p2: p3)
                    
                    var s = (a+b+c)/2
                    
                    var area = (s*(s-a)*(s-b)*(s-c)).squareRoot()
                    
                    if(area>max)
                    {
                        max = area
                    }
                }
            }
        }
        
        return max
    }
    
    func getDistance(p1: [Int], p2: [Int]) -> Double
    {
        return (pow(Double(p2[1]-p1[1]), 2) + pow(Double(p2[0]-p1[0]),2)).squareRoot()
    }
}

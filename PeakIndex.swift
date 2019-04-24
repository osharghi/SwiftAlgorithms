//
//  PeakIndex.swift
//  
//
//  Created by Omid Sharghi on 4/24/19.
//
//852. Peak Index in a Mountain Array
//https://leetcode.com/problems/peak-index-in-a-mountain-array/


import Foundation

class Solution {
    func peakIndexInMountainArray(_ A: [Int]) -> Int {
        
        var peakIndex = -1
        var peakValue = Int.min
        
        for i in 1..<A.count-1
        {
            if(A[i]>A[i-1] && A[i]>A[i+1])
            {
                if(A[i]>peakValue)
                {
                    peakIndex = i
                    peakValue = A[i]
                }
            }
        }
        
        return peakIndex
    }
}

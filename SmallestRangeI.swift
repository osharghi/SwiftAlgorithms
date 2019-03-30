//
//  SmallestRangeI.swift
//  
//
//  Created by Omid Sharghi on 3/30/19.
//

//LeetCode: 908. Smallest Range I


import Foundation

func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
    
    if(A.count == 1)
    {
        return 0
    }
    
    var min = Int.max
    var max = Int.min
    
    for i in  0..<A.count
    {
        if(A[i]<min)
        {
            min = A[i]
        }
        
        if(A[i]>max)
        {
            max = A[i]
        }
    }
    
    var diff = max - min
    
    if(K*2<=diff)
    {
        return diff - 2*K
    }
    else
    {
        return 0
    }
}

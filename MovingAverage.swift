//
//  MovingAverage.swift
//  
//
//  Created by Omid Sharghi on 4/24/19.
//
//346. Moving Average from Data Stream
//https://leetcode.com/problems/moving-average-from-data-stream/

import Foundation

class MovingAverage {
    
    var runningSum : Double = 0
    var queue : [Double] = Array()
    var size: Double = 0
    
    /** Initialize your data structure here. */
    init(_ size: Int) {
        self.size = Double(size)
    }
    
    func next(_ val: Int) -> Double {
        
        let valD = Double(val)
        runningSum += valD
        queue.append(valD)
        
        if(Double(queue.count) == size)
        {
            return runningSum/size
        }
        else if(Double(queue.count)  < size)
        {
            return runningSum/Double(queue.count)
        }
        else
        {
            let first = queue.removeFirst()
            runningSum -= first
            return runningSum/size
        }
    }
}

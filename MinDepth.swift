//
//  MinDepth.swift
//  
//
//  Created by Omid Sharghi on 4/2/19.
//
//  LeetCode: 111. Minimum Depth of Binary Tree
//  https://leetcode.com/problems/minimum-depth-of-binary-tree/

import Foundation

func minDepth(_ root: TreeNode?) -> Int {
    
    guard let r = root else
    {
        return 0
    }
    
    return getMin(node: r)
    
}

func getMin(node: TreeNode?) -> Int
{
    guard let n = node else
    {
        return 0
    }
    
    let val1 = getMin(node: n.left)
    let val2 = getMin(node: n.right)
    
    if(val1 != 0 && val2 != 0)
    {
        return min(val1, val2) + 1
    }
    else
    {
        return max(val1, val2) + 1
    }
}

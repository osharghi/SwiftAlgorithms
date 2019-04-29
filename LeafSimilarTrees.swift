//
//  LeafSimilarTrees.swift
//  
//
//  Created by Omid Sharghi on 4/29/19.
//
//  872. Leaf-Similar Trees
//  https://leetcode.com/problems/leaf-similar-trees/

import Foundation

class Solution {
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        
        
        var list1: [Int] = Array()
        var list2: [Int] = Array()
        
        getLeaves(n: root1, values: &list1)
        getLeaves(n: root2, values: &list2)
        
        if(list1.count != list2.count)
        {
            return false
        }
        else
        {
            for i in 0..<list1.count
            {
                if(list1[i] != list2[i])
                {
                    return false
                }
            }
        }
        
        return true
    }
    
    func getLeaves(n: TreeNode?, values: inout [Int])
    {
        if( n == nil)
        {
            return
        }
        
        if(n!.left == nil && n!.right == nil)
        {
            values.append(n!.val)
            return
        }
        
        getLeaves(n: n!.left, values: &values)
        getLeaves(n: n!.right, values: &values)
        
        return
    }
}

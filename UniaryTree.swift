//
//  UniaryTree.swift
//  
//
//  Created by Omid Sharghi on 4/24/19.
//
//965. Univalued Binary Tree
//https://leetcode.com/problems/univalued-binary-tree/

import Foundation

class Solution {
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        
        if(root == nil)
        {
            return true
        }
        
        return checkNodes(n: root!, val: root!.val)
        
    }
    
    func checkNodes(n: TreeNode?, val: Int) -> Bool
    {
        if(n == nil)
        {
            return true
        }
        
        if(n!.val != val)
        {
            return false;
        }
        
        var left = checkNodes(n: n!.left, val: val)
        if(!left)
        {
            return left
        }
        
        return checkNodes(n: n!.right, val: val)
    }
}

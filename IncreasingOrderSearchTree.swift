//
//  IncreasingOrderSearchTree.swift
//  
//
//  Created by Omid Sharghi on 3/30/19.
//

import Foundation

//897. Increasing Order Search Tree
//https://leetcode.com/problems/increasing-order-search-tree/

func increasingBST(_ root: TreeNode?) -> TreeNode? {
    
    if(root == nil)
    {
        return root
    }
    
    var r = Result()
    buildTree(node: root, r: &r)
    return r.root
}

func buildTree(node: TreeNode?, r: inout Result) ->Bool
{
    if(node == nil)
    {
        if(r.rootDiscovered == false)
        {
            return true
        }
        return false
    }
    
    
    var check = buildTree(node: node!.left, r: &r)
    
    if(check == true)
    {
        r.root = node
        r.parent = node
        r.rootDiscovered = true
        buildTree(node: node!.right, r: &r)
        
    }
    else
    {
        node!.left = nil
        r.parent!.right = node
        r.parent = node
        buildTree(node: node!.right, r: &r)
    }
    
    return false
}

class Result
{
    var root : TreeNode?
    var parent: TreeNode?
    var rootDiscovered : Bool = false
}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

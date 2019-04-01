//
//  Uncommon Words from Two Sentences.swift
//  
//
//  Created by Omid Sharghi on 4/1/19.
//
//  LeetCode: 884. Uncommon Words from Two Sentences
//  https://leetcode.com/problems/uncommon-words-from-two-sentences/

import Foundation

func uncommonFromSentences(_ A: String, _ B: String) -> [String] {
    
    var list : [String] = Array()
    let aList = A.components(separatedBy:" ")
    let bList = B.components(separatedBy:" ")
    var dictA : [String:Int] = Dictionary()
    var dictB : [String:Int] = Dictionary()
    
    for word in aList
    {
        if(dictA[word] != nil)
        {
            dictA[word] = dictA[word]!+1
        }
        else
        {
            dictA[word] = 1
        }
    }
    
    for word in bList
    {
        if(dictB[word] != nil)
        {
            dictB[word] = dictB[word]!+1
        }
        else
        {
            dictB[word] = 1
        }
    }
    
    for (key,value) in dictA
    {
        if(value == 1 && dictB[key] == nil)
        {
            list.append(key)
        }
    }
    
    for (key, value) in dictB
    {
        if(value == 1 && dictA[key] == nil)
        {
            list.append(key)
        }
    }
    
    return list
}

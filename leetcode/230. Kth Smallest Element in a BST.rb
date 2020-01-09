# source : https://leetcode.com/problems/kth-smallest-element-in-a-bst/
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}

def visit_node(node,hash)
    visit_node(node.left, hash) if node.left
    hash[:counter]+=1    
    hash[:found] = true and hash[:kth_element]= node.val if hash[:counter] == hash[:k]
    visit_node(node.right,hash) if !hash[:found] and  node.right
end

def kth_smallest(root, k)
  hash={
      k: k,
      counter: 0,
      kth_element: nil,
      found: false
  }
  visit_node(root,hash)
  return hash[:kth_element]  
end

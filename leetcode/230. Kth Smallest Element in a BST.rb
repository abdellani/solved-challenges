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

def inorder( node, hash)
    # visit left child, visit right child
    inorder(node.left, hash) if node.left
    hash[:counter]+=1
    if hash[:counter]== hash[:k]
        hash[:kthelement]=node.val
        hash[:found]=true
    end
    inorder(node.right, hash) if hash[:found] == false and node.right

end
def kth_smallest(root, k)
    hash={
        k:k,
        counter:0,
        found:false,
        kthelement:nil   
    }
    inorder(root, hash)
    hash[:kthelement]
end

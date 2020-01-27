# source : https://leetcode.com/problems/univalued-binary-tree/
# @param {TreeNode} root
# @return {Boolean}
def check(node,value)
    return false if node.val != value ||
        (!node.left.nil? && !check(node.left,value)) ||
        (!node.right.nil? && !check(node.right,value))
    true
end
def is_unival_tree(root)
    check(root,root.val)
end

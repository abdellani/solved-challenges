=begin
source: https://leetcode.com/problems/reverse-linked-list/
=end
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    return if head.nil?
    tail=head
    pointer=head.next
    while not pointer.nil?
        next_node=pointer.next
        pointer.next=head
        head=pointer
        pointer=next_node
    end
    tail.next=nil
    head
end

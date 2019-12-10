=begin
Link : https://leetcode.com/problems/merge-k-sorted-lists/
Merge k Sorted Lists
Runtime only beats 21.48% of ruby submissions.
I'll implement another solution soon.
=end
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode[]} lists
# @return {ListNode}
def get_smallest(lists)
    i=0
    smallest=[]
    selected_lists=[]

    while i<lists.length
        if smallest.empty?
            if not lists[i].nil?
                smallest=[lists[i]]
                selected_lists=[i]
            end
        else 
            if (not lists[i].nil?) 
                if lists[i].val<smallest.first.val
                    smallest=[lists[i]]
                    selected_lists=[i]
                elsif lists[i].val == smallest.first.val
                    smallest<< lists[i]
                    selected_lists<< i
                end
            end
            
        end
        i+=1
    end
    return [[],nil] if selected_lists.empty?
    frequency=selected_lists.length
    
    empty_lists=[]
    selected_lists.each do |i|
        lists[i]=lists[i].next
        empty_lists<< i if lists[i].nil? 
    end
    
    while(e=empty_lists.pop)!=nil
        lists.delete_at(e)
    end
    [smallest,frequency]
end
def generate_list (array)
    i=0
    while i<array.length-1
        array[i].next=array[i+1]
        i+=1
    end
    [array.first,array.last]
end

def merge_k_lists(lists)
    head=nil
    newest_node=nil
    lastest_node=nil
    while not (newest_node,frequency=get_smallest(lists))[0].empty?
        sub_list_head,sub_list_tail=generate_list(newest_node)
        head=sub_list_head if head.nil?
        if lastest_node.nil?
            lastest_node=sub_list_tail
        else
            lastest_node.next=sub_list_head
            lastest_node=sub_list_tail
        end
        sub_list_tail.next=nil
    end
    head

end

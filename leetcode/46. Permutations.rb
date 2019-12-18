# @param {Integer[]} nums
# @return {Integer[][]}
=begin
 source: https://leetcode.com/problems/permutations/
 https://media.geeksforgeeks.org/wp-content/cdn-uploads/NewPermutation.gif
=end
def swaps(nums,index)
    result=[]
    (index+1...nums.length).each do |i|
        array=nums.dup
        array[i],array[index]=array[index],array[i]
        result<< array
    end
    result 
end
def permute(nums)
    final_result=[nums]
    (nums.length-1).times do |swap_index|
        final_result=final_result.flat_map do |array|
            [array]+swaps(array,swap_index)
        end
    end
    final_result
end

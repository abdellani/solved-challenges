# source: https://leetcode.com/problems/maximum-subarray/
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    sum=0
    max_sum=nums.first
    nums.each do |num|
        sum+= num
        max_sum = sum if max_sum<sum
        sum=0 if sum<0
    end
    max_sum
end

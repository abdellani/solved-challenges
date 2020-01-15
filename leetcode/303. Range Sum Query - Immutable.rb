# source  : https://leetcode.com/problems/range-sum-query-immutable/
class NumArray
=begin
    :type nums: Integer[]
=end
    def initialize(nums)
        @sum=[0]
        (nums.length).times do |i|
            @sum<< nums[i]+@sum[i]
        end
    end
=begin
    :type i: Integer
    :type j: Integer
    :rtype: Integer
=end
    def sum_range(i, j)
        @sum[j+1]-@sum[i]
    end
end

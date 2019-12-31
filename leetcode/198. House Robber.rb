# source: https://leetcode.com/problems/house-robber/
# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    return 0 if nums.empty?
    return nums.max if nums.length <3
    dp=[nums.first]
    dp<< nums[0,2].max
    nums[2..nums.length].each do |num|
        dp << [dp[-1],dp[-2]+num].max
    end
    dp.last
end

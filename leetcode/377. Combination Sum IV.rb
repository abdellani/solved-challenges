# source: https://leetcode.com/problems/combination-sum-iv/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def combination_sum4(nums, target)
    dp=[0]*(target+1)
    dp[0]=1
    (1..target).each do |n|
        nums.each do |num|
            dp[n]+=dp[n-num] if n-num>=0
        end
    end
    dp.last
end

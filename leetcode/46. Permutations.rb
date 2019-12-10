=begin
source: https://leetcode.com/problems/permutations/
=end
# @param {Integer[]} nums
# @return {Integer[][]}
def permutations(nums,i)
    results=[]
    j=i+1
    while j<nums.length
        tmp=nums.dup
        tmp[i],tmp[j]=tmp[j],tmp[i]
        results<< tmp
        j+=1
    end
    results
end
def permute(nums)
    results=[nums]
    nums.length.times do |i|
        new_set=[]
        results.each do |array|
            new_set+= permutations(array,i)
        end
        results+=new_set
    end
    results
end

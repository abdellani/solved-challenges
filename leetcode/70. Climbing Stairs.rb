=begin
source: https://leetcode.com/problems/climbing-stairs/
=end
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    return n if n<3 
    array=Array.new(n+1)
    array[0],array[1],array[2]=0,1,2
    i=3
    while i<=n
        array[i]=array[i-1]+array[i-2]
        i+=1
    end
    array.last
end

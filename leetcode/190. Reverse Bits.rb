# source : https://leetcode.com/problems/reverse-bits/
# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
    bits = [0]*32
    for i in  0 .. 31 
        bits[i] =((1<< i)&n)>0? 1:0 
    end
    bits.reverse!
    result=0
    bits.each_with_index do |bit,i|
        result += bit* 2**i
    end
    result
end

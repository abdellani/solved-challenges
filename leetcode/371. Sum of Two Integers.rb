=begin
source: https://leetcode.com/problems/sum-of-two-integers/
=end
# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def get_sum(a, b)
    result=0
    iterations=32
    c_bit=false    
    iterations.times do |k|
        a_bit=(a&(1<<k)) !=0
        b_bit=(b&(1<<k)) !=0
        r_bit=(a_bit^b_bit^c_bit)
        result |=(1<<k) if r_bit
        c_bit = (a_bit && b_bit) ||(a_bit && c_bit)||(b_bit && c_bit)
    end
    
    if result[31]==1
        result=[result.to_s(2)].pack("B*").unpack("l>").first
    end
    result
end

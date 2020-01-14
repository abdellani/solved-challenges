# source : https://leetcode.com/problems/knight-dialer/
# @param {Integer} n
# @return {Integer}

def knight_dialer(n)
    mod= 10**9 + 7
    pre={
        0 => [4,6],
        1 => [6,8],
        2 => [7,9],
        3 => [4,8],
        4 => [0,3,9],
        5 => [],
        6 => [0,1,7],
        7 => [2,6],
        8 => [1,3],
        9 => [2,4]
    }
    dp=[1]*10
    (1...n).each do
        dp1=[0]*10
        (0..9).each do |num|
            pre[num].each do |p|
                dp1[num] += dp[p]
                dp1[num] %= mod 
            end
        end
        dp=dp1
    end
    dp.sum % mod
end

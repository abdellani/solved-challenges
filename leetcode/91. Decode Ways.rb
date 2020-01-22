# source: https://leetcode.com/problems/decode-ways/
# @param {String} s
# @return {Integer}
def num_decodings(s)
    s=s.split("").map(&:to_i)
    return (0<s[0] and s[0]<10)? 1: 0 if s[0]==0 or s.length==1 
    dp=[0]*(s.length)
    dp[0]=1
    dp[1]+=1 if 0<s[1] and s[1]<10
    dp[1]+=1 if 9<s[0]*10 + s[1] and s[0]*10 + s[1]<=26
    (2...s.length).each do |n|
        dp[n]+= dp[n-1] if 0 <s[n] and s[n]<10
        dp[n]+= dp[n-2] if 9 <s[n-1]*10+s[n] and s[n-1]*10+s[n]<=26
    end
    dp.last
end

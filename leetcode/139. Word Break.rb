# source : https://leetcode.com/problems/word-break/
# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
    return false if word_dict.empty?
    dp=[false]*(s.length)
    dp[0]=true
    (1..s.length).each do |i|
        word_dict.select{|w| i>=w.length}.each do |w|
             dp[i] ||= (dp[i-w.length] &&  w == s[i-w.length...i]) 
        end
    end
    dp.last
end

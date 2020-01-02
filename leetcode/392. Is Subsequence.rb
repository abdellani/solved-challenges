# source: https://leetcode.com/problems/is-subsequence/
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    return true if s==t
    index=0
    s_length=s.length
    t.each_char do |char|
        index+=1 if s[index]==char
        return true if index == s_length 
    end
    false
end

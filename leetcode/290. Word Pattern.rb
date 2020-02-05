# source : https://leetcode.com/problems/word-pattern/
# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
    words=str.split(" ")
    return false if words.length != pattern.length
    hash_l_w={}
    hash_w_l={}
    words.each_with_index.each do |word,i|
        hash_l_w[pattern[i]]=word if hash_l_w[pattern[i]].nil?
        hash_w_l[word]=pattern[i] if hash_w_l[word].nil?
        return false if hash_l_w[pattern[i]]!=word or hash_w_l[word]!=pattern[i]
    end
    true
end

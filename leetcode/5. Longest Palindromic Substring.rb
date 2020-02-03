# source : https://leetcode.com/problems/longest-palindromic-substring/
# @param {String} s
# @return {String}
def is_palindrome?(s,x,y,memory)
    return memory[[x,y]] unless memory[[x,y]].nil?
    if s[x]!=s[y]
        memory[[x,y]]=false
        return false
    elsif x==y or x == y+1
        memory[[x,y]]=true
        return true
    end
    memory[[x,y]]= is_palindrome?(s,x+1,y-1,memory)
    return memory[[x,y]]
end

def longest_palindrome(s)
    result=""
    memory={}
    (0...s.length).each do |l|
        (0...s.length-l).each do |i|
            if is_palindrome?(s,i,i+l,memory)
                result=s[i..i+l]
            end
        end
    end
    result
end

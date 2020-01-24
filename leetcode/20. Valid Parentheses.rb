# source : https://leetcode.com/problems/valid-parentheses/
# @param {String} s
# @return {Boolean}
def is_valid(s)
    brackets={
        "}"=>"{",
        ")"=>"(",
        "]"=>"[",
        }
    stack=[]
    s.each_char do |char|
        if brackets.keys.include?(char)
            return false if stack.empty? or stack.pop != brackets[char]
        else
           stack<< char
        end
    end
    return false unless stack.empty?
    true
end

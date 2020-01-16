# source : https://leetcode.com/problems/2-keys-keyboard/
def biggest_divider(n)
    (n/2).downto(2).each do |i|
        return i if n%i==0
    end
    n
end
def min_steps(n)
    return 0 if n== 1
    result=[0,0,2]
    (3..n).each do |i|
        bd=biggest_divider(i)
        sd=i/bd
        result<< i if bd==i
        result<< result[bd]+sd if bd!=i 
    end
    result.last
end

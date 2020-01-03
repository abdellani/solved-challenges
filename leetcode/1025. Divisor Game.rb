#source : https://leetcode.com/problems/divisor-game/
=begin
The short solution 
=end
def divisor_game(n)
  n%2==0
end
=begin
The long solution
=end
def get_divisors(n)
    divisors=[]
    (1..n/2).each do |i|
        divisors<<i if n%i==0
    end
    divisors
end
def divisor_game(n)
    result=[false,true]
    return result[n-1] if n<=2
    i=3
    while i<=n
        dividers=get_divisors(i)
        if dividers.any? { |number| result[number-1] == true}
            result<< true
        else
            result<< false
        end
        i+=1
    end
    result.last
end

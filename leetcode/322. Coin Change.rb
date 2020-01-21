# source: https://leetcode.com/problems/coin-change/

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
# first solution

def f(n,m,coins,memory)
    res=nil
    res= 0 if m==0         
    if n==0
        if m%coins[n]!=0
            res= -1 
        else
            res= m/coins[n]
        end
    end
    (memory[[n,m]] = res and return memory[[n,m]]) unless res.nil?
    min=nil
    (m/coins[n]).downto(0).each do |i|
        if memory[[n-1,m-i*coins[n]]].nil? 
            memory[[n-1,m-i*coins[n]]]=f(n-1,m-i*coins[n],coins,memory)
        end
        p=memory[[n-1,m-i*coins[n]]]
        if p>=0
            min= p+i  if min.nil? or  p+i<min
        end
    end
    memory[[n,m]]=min
    memory[[n,m]]=-1 if min.nil? 
    memory[[n,m]]
end
def coin_change(coins, amount)
    memory={}
    f(coins.length-1,amount,coins,memory)
end

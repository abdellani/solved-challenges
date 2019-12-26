# source : https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    s=b=g=0
    (0...prices.length).each do |index|
        if prices[index]- prices[b]> g
            g=prices[index]- prices[b]
            s=index
        end
        b=s=index if prices[b]>prices[index]
    end
    g
end

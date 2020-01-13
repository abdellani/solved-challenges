# source: https://leetcode.com/problems/number-of-equivalent-domino-pairs/
# @param {Integer[][]} dominoes
# @return {Integer}
def combinations(n, k)
  return 1 if k == 0 or k == n
  (k+1..n).reduce(:*)/(1.. n-k).reduce(:*)
end
def num_equiv_domino_pairs(dominoes)
    hash=Hash.new(0)
    dominoes.each do |domino|
        a,b = (domino[0]<domino[1])? domino : domino.reverse
        hash[a*10+b]+= 1
    end
    hash.values.select{|x| x>1}.reduce(0){|sum,x| combinations(x,2) + sum }
end

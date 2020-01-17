# source : https://leetcode.com/problems/ones-and-zeroes/
# @param {String[]} strs
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def find_max_form(strs, m, n)
    i=strs.length-1
    memory={}
    find_max(i,n,m,strs,memory)

end

def find_max(i,n,m,strs,memory)
    return 0 if i<0
    return memory[[i,n,m]] unless memory[[i,n,m]].nil?
    n1,m1=get_n_m(strs[i])
    res=0
    if n>=n1 and m>=m1
        res=[find_max(i-1,n,m,strs,memory),1+find_max(i-1,n-n1,m-m1,strs,memory)].max
    else
        res=find_max(i-1,n,m,strs,memory)
    end
    memory[[i,n,m]]=res
    return res
end

def get_n_m(str)
    [str.count("1"),str.count("0")]
end

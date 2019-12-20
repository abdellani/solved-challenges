=begin
source: https://leetcode.com/problems/3sum/
=end
# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    p=Hash.new(0)
    n=Hash.new(0)
    z=0
    nums.each do |num|
        case true
            when num==0
                z+=1
            when num>0
                p[num]+=1
            when num<0
                n[num]+=1
        end
    end
    results=[]
    results<<[0,0,0]if z>2
    pn=p.keys
    nn=n.keys
    
    #p+p =n
    #p+0 =n
    #n+n =p

    #p+p =n
    i=0
    a= pn[i]
    results<<[a,a,-2*a] if p[a]>1 and n[-2*a]>0
    while i<pn.length-1
        a= pn[i]
        j=i+1
        b= pn[j]
        results<<[b,b,-2*b] if p[b]>1 and n[-2*b]>0
        while j<pn.length
            b= pn[j]
            results<<[a,b,-(a+b)] if n[-(a+b)]>0 
            j+=1
        end
        i+=1
    end
    
    #n+n =p
    i=0
    a= nn[i]
    results<<[a,a,-2*a] if n[a]>1 and p[-2*a]>0
    while i<nn.length-1
        a= nn[i]
        j=i+1
        b= nn[j]
        results<<[b,b,-2*b] if n[b]>1 and p[-2*b]>0
        while j<nn.length
            b= nn[j]
            results<<[a,b,-(a+b)] if p[-a-b]>0 
            j+=1
        end
        i+=1
    end
    
    #p+0 =n
    if z>0
        i=0
        while i<pn.length
            a= pn[i]
            results<<[a,-a,0] if n[-a]>0 
            i+=1
        end
    end
    return results

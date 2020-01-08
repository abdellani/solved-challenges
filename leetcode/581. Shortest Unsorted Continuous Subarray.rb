#source : https://leetcode.com/problems/shortest-unsorted-continuous-subarray/

# first solution 
def find_unsorted_subarray(nums)
    hash=Hash.new(-1)
    indexes={
        start:-1,
        end:-1
        }
    nums.each_with_index do |num,index|
        hash.keys.select{|key| key>num}.each do |key|
                 indexes[:start] =hash[key] if indexes[:start] == -1 or 
                                            hash[key]< indexes[:start]
                 indexes[:end]=index
        end
        hash[num]=index if hash[num]==-1
    end
    return 0 if indexes[:end] == indexes[:start]
    indexes[:end] - indexes[:start]+1  
end

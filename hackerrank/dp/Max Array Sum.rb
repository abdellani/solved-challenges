#!/bin/ruby
# source : https://www.hackerrank.com/challenges/max-array-sum/problem
require 'json'
require 'stringio'

def maxSubsetSum(arr)
    dp=[arr.first,arr[0..1].max]
    arr[2..arr.length].each do |el|
        dp<< [dp[-2]+el,el,dp[-1]].max
    end
    dp.last
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

res = maxSubsetSum arr

fptr.write res
fptr.write "\n"

fptr.close()

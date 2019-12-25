#!/bin/ruby
# source : https://www.hackerrank.com/challenges/max-array-sum/problem
require 'json'
require 'stringio'

def maxSubsetSum(arr)
    dp=[]
    dp<< arr.first
    dp<< arr[0..1].max
    ans= dp.max
    arr[2..arr.length].each do |el|
        dp<< [[dp[-2]+el,el].max,ans].max
        ans<< [ans,dp.last].max
    end
    ans
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

res = maxSubsetSum arr

fptr.write res
fptr.write "\n"

fptr.close()

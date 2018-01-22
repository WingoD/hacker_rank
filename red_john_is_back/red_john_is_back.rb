#!/bin/ruby
require 'prime'
def red_john(n)
    permutations = {}
    permutations[1] = 1
    permutations[2] = 1
    permutations[3] = 1
    permutations[4] = 2
    i = 5
    while i <= n
        permutations[i] = permutations[i-1] + permutations[i-4]
        i += 1
    end
    
    Prime.each(permutations[n]).map{|e| e}.length
end

t = gets.strip.to_i
for a0 in (0...t)
    n = gets.strip.to_i
    result = red_john(n)
    puts result
end

#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'closestNumbers' function below.
#
# The function accepts INTEGER_ARRAY numbers as parameter.
#

def closestNumbers(numbers)
  # Write your code here
  results = {}
  numbers.sort!
  diff = numbers[1] - numbers[0]
  numbers.each_with_index do |n, index|
    if numbers[index + 1].nil?
      break
    end
    current_diff = numbers[index + 1] - n
    if diff == 0
      diff = current_diff
    elsif current_diff < diff
      diff = current_diff
      results = {}
      results[n] = numbers[index + 1]
    elsif current_diff == diff
      results[n] = numbers[index + 1]
    end

  end
  results.each do |k, v|
    puts k.to_s + ' ' + v.to_s
  end
end

closestNumbers([4, 2, 1, 3])
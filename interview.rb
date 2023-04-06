#
# Given an integer array nums of length n where all the integers of nums are in the range [1, n]
# and each integer appears once or twice, return an array of all the integers that appears twice.
#
#   Example 1:
#   Input: nums = [4,3,2,7,8,2,3,1]
# Output: [2,3]
#
# Example 2:
#   Input: nums = [1,1,2]
# Output: [1]
#
# Example 3:
#   Input: nums = [1]
# Output: []

output = []
nums = [4, 3, 2, 7, 8, 2, 3, 1]
nums.each do |n|
  if nums[n.abs - 1] < 0 # success case , to visit element which is already having - sign before .
    output << n.abs
  else
    nums[n.abs - 1] *= -1 # change the value of index+1 to have - sign
  end
end

puts output


# found the solution
# https://leetcode.com/problems/find-all-duplicates-in-an-array/description/
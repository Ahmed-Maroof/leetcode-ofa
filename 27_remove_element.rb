# https://leetcode.com/problems/remove-element/
# same as previous problem remove_duplicates.rb
nums = [0, 1, 2, 2, 3, 0, 4, 2]
value = 2
clean_nums = []

nums.each_with_index do |n, i|
  if n == value
    nums[i] = 999
  else
    clean_nums << n
  end
end
nums.sort! # sort! will save the sorted array in replace of the origin one .
clean_nums.size

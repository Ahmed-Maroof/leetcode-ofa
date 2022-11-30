# https://leetcode.com/problems/search-insert-position/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  nums.each_with_index do |n, i|

    if target == n || n > target
      return i
    end
  end
  return nums.size
end
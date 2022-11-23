nums = [1, 1, 2]
non_duplicate_nums = []

nums.each_with_index do |n, i|
  if !non_duplicate_nums.include? n
    non_duplicate_nums << n
  else
    nums[i] = 999
  end
end
nums.sort! # sort! will save the sorted array in replace of the origin one .
non_duplicate_nums.size

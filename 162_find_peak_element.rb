# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
  result = []
  nums.each_with_index do |n, index|
    prev = nums[index - 1] ? nums[index - 1] : -Float::INFINITY
    nex = nums[index + 1] ? nums[index + 1] : -Float::INFINITY
    if n > prev && n > nex
      result << index
    end
  end

  result.empty? ? 0 : result.first
end

# response = find_peak_element([1, 2, 3, 1])
response = find_peak_element([1, 2, 1, 3, 5, 6, 4])
puts response
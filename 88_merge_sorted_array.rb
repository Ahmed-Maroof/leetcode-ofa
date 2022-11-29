nums1 = [-1, 0, 0, 3, 3, 3, 0, 0, 0]

nums2 = [1, 2, 2]
m = 6
n = 3

i = j = 0
nums1.reject!.each_with_index do |x, i|
  x == 0 && i > m - 1
end

until nil == nums1[i] && nil == nums2[j] do
  if nums2[j].nil?
    i += 1
  else
    if nums1[i].nil?
      nums1.insert(i, nums2[j])
      i += 1
      j += 1
    else
      if nums1[i] <= nums2[j]
        i += 1
      else
        nums1.insert(i, nums2[j])
        i += 1
        j += 1
      end
    end
  end
end

puts nums1
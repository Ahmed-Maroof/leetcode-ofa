# s = "A man, a plan, a canal: Panama"
# s = "ab"
# s = "abba"
# s = "race a car"
# s = "race  car"
s = "ab_a"
s.downcase!
s.gsub!(/[^0-9A-Za-z]/, '')


# special case
if s.empty?
  return true
end

# special case
if s.chars.size == 2
  if s.chars[0] == s.chars[1]
    return true
  else
    return false
  end
end

s_left = s.slice(0, s.size / 2)
s_right = s.slice(s.size / 2 + s.size % 2, s.size / 2)

i = 0
j = s_right.size - 1

until i == s_left.size do
  if s_left[i] == s_right[j]
    i += 1
    j -= 1
  else
    return false
  end
end

return true

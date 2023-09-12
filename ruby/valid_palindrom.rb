# s = "A man, a plan, a canal: Panama"
# s = "ab"
# s = "abba"
s = "race a car"
s.downcase!
s.gsub!(/\W+/, '')

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

start_counter_1 = 0
end_counter_1 = s.chars.size / 2 - 1
start_counter_2 = s.chars.size - 1
end_counter_2 = (s.chars.size - s.chars.size / 2) + s.chars.size % 2

until start_counter_1 == end_counter_1 && start_counter_2 == end_counter_2 do

  if s.chars[start_counter_1] == s.chars[start_counter_2]

    start_counter_1 += 1
    start_counter_2 -= 1
  else
    return false
  end
end
return true

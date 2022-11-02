# s = 'XXVII'
s = 'LVIII'
s_chars = s.split('')
s_chars_length = s_chars.length
mapping = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
output = 0
i = 0
while i < s_chars.length
  if mapping[s_chars[i]] == 1000
    output += 1000
  else
    if nil != mapping[s_chars[i + 1]] && mapping[s_chars[i + 1]] > mapping[s_chars[i]]
      output += mapping[s_chars[i + 1]] - mapping[s_chars[i]]
      i += 1
    else
      output += mapping[s_chars[i]]
    end

  end
  i += 1
end
puts output
output
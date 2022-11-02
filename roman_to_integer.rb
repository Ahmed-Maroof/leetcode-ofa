# s = 'XXVII'
s = 'MCMXCIV'
s_chars = s.split('')
mapping = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M': 1000 }
output = 0

s_chars.each_with_index do |char, i|
  if mapping[char] == 1000
    output += 1000
  else
    if nil != mapping[s_chars[i + 1]] && mapping[s_chars[i + 1]] > mapping[char]
      output += mapping[s_chars[i + 1]] - mapping[char]
      i += 1
    else
      output += mapping[char]
    end

  end
end
puts output
output
# s = 'XXVII'
s = 'LVIII'
s_chars = s.split('') #split the string to list of chars
# our mapping reference object
mapping = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
output = 0
i = 0
while i < s_chars.length
  if mapping[s_chars[i]] == 1000 # first case if the first char is M so no comparison needed
    output += 1000
  else
    # check the next char if it bigger than current one or not and if it exist or our char is the last one
    if nil != mapping[s_chars[i + 1]] && mapping[s_chars[i + 1]] > mapping[s_chars[i]]

      # add the subtraction result to the final output
      output += mapping[s_chars[i + 1]] - mapping[s_chars[i]]
      # skip the next char as it participate in the subtraction process .
      i += 1
    else
      # our char is bigger , so add it's value directly .
      output += mapping[s_chars[i]]
    end

  end
  i += 1
end
puts output
output
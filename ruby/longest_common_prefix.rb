strs = %w[flower flow flight]
output = ''
break_flag = false
strs_arrays = strs.collect { |str| str.chars }

min_size = strs_arrays.map(&:size).min

if min_size > 0
  i = 0 # initial_value

  until i == min_size do
    pivot_char = strs_arrays.first[i]
    strs_arrays.each do |arr|
      if arr[i] != pivot_char
        # this means war
        i = min_size # this to get out of main until .
        break_flag = true # this flag to mention that one of arrays broke the condition .
        break
      end
    end
    if !break_flag # this mean that no one break the loop , so get the enxt char
      i += 1
      output += pivot_char
    else
      break
    end
  end
end
output
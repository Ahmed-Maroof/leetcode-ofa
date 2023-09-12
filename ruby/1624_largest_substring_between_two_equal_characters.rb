# @param {String} s
# @return {Integer}
def max_length_between_equal_characters(s)

  diff = -1
  result_map = extract_result_map(s)
  result_map.each do |r|
    temp_value = r[:last_index] - r[:first_index] - 1
    if temp_value > diff
      diff = temp_value
    end
  end

  diff
end

def extract_result_map(s)
  result_map = []

  s.chars.each_with_index do |c, index|

    selected_entry = result_map.select { |entry| entry[:char] == c }

    if selected_entry.empty?
      result_map << {
        char: c,
        first_index: index,
        last_index: index
      }
    else
      selected_entry.first[:last_index] = index

    end
  end
  result_map
end

# response = max_length_between_equal_characters("aa")
response = max_length_between_equal_characters("abca")

puts response
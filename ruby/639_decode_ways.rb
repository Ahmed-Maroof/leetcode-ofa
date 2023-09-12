#https://leetcode.com/problems/decode-ways-ii/

def handle_astric(s)
  result = 0
  special_results = s.chars.select.with_index do |special, index|
    special == '*'
  end
  special_results.each do |special, index|
    if s.chars[index - 1] == 1
      result += 2 * 9
    end
  end
end

def num_decodings(s)
  result = 0
  if s.include? '*'
    result += handle_astric(s)
  else
    result += normal_decode(s)
  end
  result
end

def normal_decode(s)
  char_values = ('A'..'Z').each.with_index(1).to_h
  result = 0
  s.chars.each_with_index do |number, index|
    # if number == 1
    #   # check on next number
    #   if (1..9).include? s.chars[index + 1]
    #     result += 2
    #   else
    #     # no following number from the special case so increase by 1
    #     result += 1
    #   end
    # elsif number == 2
    #   if (1..6).include? s.chars[index + 1]
    #     result += 2
    #   else
    #     # no following number from the special case so increase by 1
    #     result += 1
    #   end
    # else
    #   # normal_char will be decoded once
    #   result += 1
    # end

    # for all cases increase the result with 1
    result += 1

    # special case for 1
    if !s.chars[index -1].nil? && s.chars[index -1] == 1
      result += 1
    end

    # special case for 2
    if (1..6).include? number && !s.chars[index -1].nil? && s.chars[index -1] == 2
      result += 1
    end
  end
end

response = num_decodings('1*')
puts response
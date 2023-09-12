# https://leetcode.com/problems/repeated-string-match/
# @param {String} a
# @param {String} b
# @return {Integer}
def repeated_string_match(a, b)
  result = 1
  valid_response = b_valid(a, b)
  return valid_response if valid_response
  #case 4
  return 1 if can_substring(a, b)

  #case2
  new_a = a
  while (true)

    new_a += a
    result += 1
    if can_substring(new_a, b)
      return result
      # infinite case
    elsif new_a.length > 2 * b.length and result > 2
      return -1
    end
  end
  result
end

def b_valid(a, b)

  # case 3
  if a == b
    return 1
  end

  # case 1
  b.chars.each do |c|
    if !(a.include? c)
      return -1
    end
  end

  return nil
end

def can_substring(a, b)
  a.include? b
end

res = repeated_string_match("abcd", "cdabcdab") #3
# res = repeated_string_match("a", "a") #1
# res = repeated_string_match("aa", "a") #1
# res = repeated_string_match("abc", "cabcabca") #4
# res = repeated_string_match("aaaaaaaaaaaaaaaaaaaaaab", "ba") #2
# res = repeated_string_match("abcabcabcabc", "abac") #-1
puts res
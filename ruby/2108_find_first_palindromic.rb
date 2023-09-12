# @param {String[]} words
# @return {String}
def first_palindrome(words)

  words.each do |word|

    if is_palindrome(word)
      return word
    end
  end
  return ""
end

def is_palindrome (s)
  # to downcase all chars before checking them
  s.downcase!
  # to remove letter and spaces from words
  s.gsub!(/[^0-9A-Za-z]/, '')

  # special case
  # if the word is empty string
  if s.empty?
    return true
  end

  # special case
  # consist of 2 chars and both of them is same so it true
  if s.chars.size == 2
    return s.chars[0] == s.chars[1]
  end

  # split the string into 2 parts from 0  to end of first half
  # and second part from right after the middle , if it even chars count or odd
  # till the end of char count .
  s_left = s.slice(0, s.size / 2)
  s_right = s.slice(s.size / 2 + s.size % 2, s.size / 2)

  # declare 2 counter i & j
  # i  = 0
  # j  = end of first half .
  i = 0
  j = s_right.size - 1

  # start compare both side according to i and j .
  # if they are equal so we will increase i and decrease j until they meet in the middle
  until i == s_left.size do
    if s_left[i] == s_right[j]
      i += 1
      j -= 1
    else
      return false
    end
  end

  return true
end

words = ["notapalindrome", "racecar"]
response = first_palindrome(words)
puts response
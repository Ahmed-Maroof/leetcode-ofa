# s = "A man, a plan, a canal: Panama"
# s = "ab"
# s = "abba"
# s = "race a car"
# s = "race  car"
s = "ab_a"

s.downcase.gsub(/[^0-9a-z ]/i, '').delete(' ') == s.downcase.gsub(/[^0-9a-z ]/i, '').delete(' ').reverse!


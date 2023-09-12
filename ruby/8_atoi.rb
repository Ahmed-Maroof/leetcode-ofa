#https://leetcode.com/problems/string-to-integer-atoi/

## my thoughts

s ="   +0 123"
final_result = 0
if !s.empty?
  s = s.delete(' ')
  number = s.scan(/\d+|[A-Za-z]+/).detect do |n|
    n = n.to_i.to_s
    Integer(n)
  rescue ArgumentError, TypeError
    return 0
  end
  number = number.to_i.to_s
  if s[0] == '.'
    return 0
  end

  if ((s.include? '+') && (s.include? '-')) || number.nil?
    return 0
  end
  if s[0] == '-'
    (-2147483648..0) === -Integer(number) ? -Integer(number) : -2147483648
  else
    (0..2147483647) === Integer(number) ? Integer(number) : 2147483647
  end
else
  return 0
end

# solution 1
# max = (2** 31) -1
# min = (-2**31)
# return s.to_i if s.to_i <= max &&  s.to_i >= min
# s.to_i < min ? min : max

#solution 2
# [-2**31, s.to_i, 2**31-1].sort[1]
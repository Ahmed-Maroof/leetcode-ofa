s = "xzxzx"
result = 0
i = 0
j = 1
loop do
  s1 = s.slice(0..i)
  s2 = s.slice(s1.size..j)
  s3 = s.slice(s2.size + 1..s.size)

  if ((s1 + s2) != (s2 + s3)) && ((s2 + s3) != (s3 + s1))
    result += 1
  end
  if s3.size <= i
    i += 1
    j = 1
  end
  j += 1
end

result

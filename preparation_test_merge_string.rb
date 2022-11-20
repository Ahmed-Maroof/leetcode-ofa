s1 = "super"
s2 = "tower"
result = ""
i = j = 0

until (i == s1.chars.size && j == s2.chars.size) do

  if  nil != s1.chars[i]
    if nil != s2.chars[j]
      if ((s1.chars[i] < s2.chars[j]) && (s1.count(s1.chars[i]) <= s2.count(s2.chars[j])))
        result += s1.chars[i]
        i += 1
      else
        result += s2.chars[j]
        j += 1
      end
    else
      result += s1.chars[i]
      i += 1
    end
  else
    if nil != s2.chars[j]
      result += s2.chars[j]
      j += 1
    else
      return result
    end

  end

end

result
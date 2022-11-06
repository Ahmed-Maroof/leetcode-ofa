s = "[[[]"
data = {
  "(" => ")",
  "{" => "}",
  "[" => "]"
}
stack = []
left_side = data.keys
result = true

s.chars.each do |char|
  if left_side.include? char
    stack << char
  else
    if data.key(char) == stack.last
      stack.pop
    else
      return false
    end
  end
end
stack.empty?
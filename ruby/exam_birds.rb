forest = [25, 0, 50, 0, 0, 0, 0, 15, 0, 0, 45]
bird = 4
nest = 0
result = []

left_side = forest[0..bird]
right_side = forest[bird + 1..forest.size]

until nest >= 100 do

  right_side.each_with_index do |n, index|
    if n > 0
      nest += n
      right_side[index] = 0
      result << index + bird + 1
      break
    end
  end

  if nest >= 100
    break
  end
  left_side.to_enum.with_index.reverse_each do |n, index|

    if n > 0
      nest += n
      left_side[index] = 0
      result << index
      break
    end
  end
end

result
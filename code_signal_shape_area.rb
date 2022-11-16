n = 5

main_column = (n - 1) * 2 + 1

counter = main_column - 2
left_side = 0

until counter == -1 do

  left_side += counter
  counter -= 2

end

area = main_column + 2 * left_side

area
inputArray = [-23, 4, -3, 8, -12]

counter = 0
result = nil
until counter == inputArray.size - 1 do

  if inputArray[counter + 1]
    temp = inputArray[counter] * inputArray[counter + 1]
    result = temp if counter == 0
    if temp > result
      result = temp
    end
    counter += 1
  end
end

result
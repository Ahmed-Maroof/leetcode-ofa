# def is_ziz(arr)
#   (arr[1] > arr[0] && arr[1] > arr[2]) || (arr[1] < arr[0] && arr[1] < arr[2]) ? 1 : 0
# end

numbers = [1, 2, 1, 3, 4]
result = []
numbers.each_with_index do |num, i|
  if numbers[i + 1] && numbers[i + 2]
    temp_arr = [num, numbers[i + 1], numbers[i + 2]]
    element = ((temp_arr[1] > temp_arr[0] && temp_arr[1] > temp_arr[2]) || (temp_arr[1] < temp_arr[0] && temp_arr[1] < temp_arr[2])) ? 1 : 0
    result << element
  end
end

result
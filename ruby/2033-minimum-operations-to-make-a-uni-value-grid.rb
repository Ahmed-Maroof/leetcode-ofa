# @param {Integer[][]} grid
# @param {Integer} x
# @return {Integer}
def min_operations(grid, x)
  arr = grid.flatten
  count = 0
  if check_reminders(arr, x)
    puts 'could be converted'
    mid = arr.length / 2
    sorted = arr.sort
    medium = arr.length.odd? ? sorted[mid] : sorted[mid - 1]
    puts medium
    sorted.each do |num|
      if num < medium
        count += (medium - num) / x
      else
        count += (num - medium) / x
      end
    end
    puts count
    count
  else
    puts 'could not be converted'
    return -1
  end
end

def check_reminders(arr, x)
  base_reminder = arr.first % x

  result = arr.select do |num|
    num % x != base_reminder
  end

  result.empty?
end

min_operations([[2, 4], [6, 8]], 2)
min_operations([[1, 5], [2, 3]], 1)
min_operations([[1, 2], [3, 4]], 2)
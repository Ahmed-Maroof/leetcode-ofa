#https://leetcode.com/problems/excel-sheet-column-number/

def title_to_number(column_title)
  # this hash to create a map of characters and their order in alphabetic
  # A = 1 , B = 2 ....
  char_values = ('A'..'Z').each.with_index(1).to_h
  # this size to hold the size of input column title and remove 1 of it to represent 0 in case of single character
  # so any thin ** 0 will give us 1
  size = column_title.size - 1
  result = 0

  column_title.chars.each do |char|

    # each char will add to result according to size of column_title . if it's a single char
    # so we will get it's value from hash . ket say A = 1
    # and try to * it with 26 ** size-1 which currently = 0
    # so A  will add to result just 1 , this in case of size equal 1
    # so let say ZY as example say
    # Z value from hash is 26 * 26 ** size -1
    # size -1 in our case is 2-1 = 1
    # so Z will add to result 26 * 26 = 676
    # and for Y , in second place , so size will be decreased .
    # so Y = 25 * 26 ** 0 , any thing ** 0 ==> 1
    # so Y = 25 * 1 = 25
    # calculating all of these , so result = 701 .!!

    result += char_values[char] * 26 ** size
    size -= 1
  end

  result
end

response = title_to_number('ZY')
puts response
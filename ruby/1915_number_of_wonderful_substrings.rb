# first we need to extract all available sub-strings from word
# second we need to loop on each substring entry .
## create a map for each char occurrence
### if we have a char had odd occurrence add it to the response list
#### if we have a substring like 'aa' add it also to the response list also .

# @param {String} word
# @return {Integer}
# Explanation: The nine wonderful substrings are underlined below:
# - "aabb" -> "a"
# - "aabb" -> "aa"
# - "aabb" -> "aab"
# - "aabb" -> "aabb"
# - "aabb" -> "a"
# - "aabb" -> "abb"
# - "aabb" -> "b"
# - "aabb" -> "bb"
# - "aabb" -> "b"

# At most 1 letter appear odd time

# def wonderful_substrings(word)
#   response = 0
#   all_sub_strings = get_all_sub_strings word
#   all_sub_strings.each do |s|
#     response += wonderful_word? s
#   end
#   response
# end
#
# def get_all_sub_strings(s)
#   indices = (0...s.length).to_a
#   indices.product(indices).reject { |i, j| i > j }.map { |i, j| s[i..j] }
# end
#
# def wonderful_word?(str)
#   odd_count = 0
#   char_map = str.chars.group_by(&:chr).map { |k, v| [k, v.size] }
#   char_map.each do |k, v|
#     if v % 2 != 0
#       odd_count += 1
#     end
#   end
#  ( odd_count == 1 || odd_count == 0) ? 1 : 0
# end
def wonderful_substrings(word)
  count = Array.new(1024, 0)
  count[0] = 1
  bitmask = 0
  result = 0
  word.each_char do |c|
    bitmask ^= 1 << (c.ord - 'a'.ord)
    result += count[bitmask]
    (0..9).each do |i|
      result += count[bitmask ^ (1 << i)]
    end
    count[bitmask] += 1
  end
  result
end

# puts wonderful_substrings "aabb"
puts wonderful_substrings "bibacdfehgbchbjicccecacbdeiggideciijgbahifjjhdeddeabbfihbegbagcgbidefijigabfjhbdjfiihggdbjacgjccidedajgaabdibcdfjfjfeifefdeachbcbdadggiagbdfigjadeaadfbadhfjgifeeaagiabddicdejcgaejcdgffggdddffideijchchaffgjhfeaffhbfahieggdahdbeijfjbeaciagfjjbcjdbjgdfeefbgjfhcbajbdghgeieiahadebeiabjedjhbfbhfhajcieibaejefbfeihebbjgciceibbabddcaeehdfdhbeeeffdijfghdfeedfcccfchjhdjddfgehiccdggbdjjghicagdhceiaebfhjhbefghjjcbjbjbfbbdhhdbdbceejaffbdbidaefihcjagaibhihbebhjfggbddhedfcacagegfaiiaeheiggjhfaegffdicgebabceaahjeegafgjgfejfeheafidabjbgafjcdgffdafcgecjdjefcbhefbfghgegfegdabjiicihfdbjjiehjfbjfhgaeacjgfbggggjegffgbabafdhbbiadgfcbfcicjagceeibhagieiddjjhcjdidccgjfbgihadhhjihgdaheibigihefacfbdgfiefehgjbbcggccfcibhbhhjjagjhehciejafbhjeicaieagjagdaaaddfgiibgicgjghdjiddaeihbcbccbfjigdjcachhdcgfheaacfhfajefbccgjcdcaahjaaedcibbjgggajaceijababjafbaccfiffcbedjc"
#https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/

def are_occurrences_equal(s)
  occ = {}

  s.chars.each do |character|

    if occ.keys.include? character
      occ[character] = occ[character] += 1
    else
      occ[character] = 1
    end
  end
  occ.values.uniq.size <= 1
end

result = are_occurrences_equal('aaabb')
puts result

#accepted
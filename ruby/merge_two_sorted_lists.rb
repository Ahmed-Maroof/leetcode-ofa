list1 = [1, 2, 4]
list2 = [1, 3, 4]
list3 = []

i = j = 0

until (i == list1.size && j == list2.size) do
  if nil != list1[i]
    if nil != list2[j]
      if list1[i] < list2[j]
        list3 << list1[i]
        i += 1
      else
        list3 << list2[j]
        j += 1
      end
    else
      # here the j is out of index , there is no element in second at index `j`
      list3 << list1[i]
      i += 1
    end
  else
    if nil != list2[j]
      list3 << list2[j]
      j += 1
    else
      return list3
    end
  end
end
list3


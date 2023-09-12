class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def merge_two_lists(list1, list2)

  return list1 unless list2
  return list2 unless list1

  if list1.val < list2.val
    if list1.next
      list1.next = merge_two_lists(list1.next, list2)
    else
      list1.next = list2
    end

    return list1
  else
    if list2.next
      list2.next = merge_two_lists(list1, list2.next)
    else
      list2.next = list1
    end
    return list2
  end

end

list1 = ListNode.new(1, ListNode.new(2, ListNode.new(4, nil)))
list2 = ListNode.new(1, ListNode.new(3, ListNode.new(4, nil)))

list3 = merge_two_lists(list1, list2)
put list3.inspect
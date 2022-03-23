def switch?(left_value, right_value)
  return left_value > right_value
end

def switch_places!(array, first_index, second_index)
  first_element = array[first_index]
  second_element = array[second_index]
  array[first_index] = second_element
  array[second_index] = first_element
end

def bubble_sort(array)
  changes_happened = true
  while changes_happened
    changes_happened = false
    (array.length-1).times do |i|
      if switch?(array[i],array[i+1])
        changes_happened = true
        switch_places!(array,i,i+1)
      end
    end
  end
end

test = [9,2,3,0,1,8,4,1,9]
p test
bubble_sort(test)
p test
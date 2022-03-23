def switch?(left_value, right_value)
  return left_value > right_value
end

def switch_places!(array, first_index, second_index)
  first_element = array[first_index]
  second_element = array[second_index]
  array[first_index] = second_element
  array[second_index] = first_element
end

test = [1,2]
switch_places!(test,0,1)
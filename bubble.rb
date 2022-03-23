def switch?(array, index)
  return array[index] > array[index+1]
end

def switch_places!(array, index)
  first_element = array[index]
  second_element = array[index+1]
  array[index] = second_element
  array[index+1] = first_element
end

def bubble_sort!(array)
  changes_happened = true
  while changes_happened
    changes_happened = false
    (array.length-1).times do |i|
      if switch?(array,i)
        changes_happened = true
        switch_places!(array,i)
      end
    end
  end
end

def bubble_sort(array)
  array_copy = array.map(&:clone)
  bubble_sort!(array_copy)
  return array_copy
end

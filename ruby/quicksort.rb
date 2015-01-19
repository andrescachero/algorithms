def swap(target_array, i, j)
  temp = target_array[j]
  target_array[j] = target_array[i]
  target_array[i] = temp
  return target_array
end

def partition(target_array, low, high)
  pivot_index = high
  pivot_value = target_array[pivot_index]
  store_index = low
  (low..high-1).each do |i|
    if target_array[i] < pivot_value
      swap(target_array, i, pivot_value)
      store_index += 1
    end
  end
  swap(target_array, store_index, high)
  return store_index
end

def quicksort(target_array, low, high)
  p "#{low}, #{high}"
  p target_array
  if low < high
    p = partition(target_array, low, high)
    quicksort(target_array, low, p - 1)
    quicksort(target_array, p + 1, high)
  end
  return target_array
end

test_array = [3,7,5,8,2,1,9,5,4]
ordered_array = quicksort(test_array.dup, 0, test_array.length-1)

puts "test_array: #{test_array}"
puts "ordered_array: #{ordered_array}"

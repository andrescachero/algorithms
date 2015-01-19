# Based on https://gist.github.com/aspyct/3433278
def quicksort(target_array, lo=0, hi=nil)

  hi = target_array.length - 1 if hi.nil?

  return if lo >= hi

  pivot = target_array[lo]

  min = lo
  max = hi

  free = min
  
  while min < max
    case free
    when min
      if target_array[max] <= pivot #move to the left
        target_array[free] = target_array[max]
        free = max
        min += 1
      else
        max -= 1
      end    
    when max
      if target_array[min] >= pivot # move to the right
        target_array[free] = target_array[min]
        free = min
        max -= 1
      else
        min += 1
      end
    else
      raise 'Inconsistent state'
    end
  end

  target_array[free] = pivot

  quicksort(target_array, lo, free - 1)
  quicksort(target_array, free + 1, hi)

end

test_array = [3,7,5,8,2,1,9,5,4]
ordered_array = test_array.dup
quicksort(ordered_array)

puts "test_array:    #{test_array}"
puts "ordered_array: #{ordered_array}"

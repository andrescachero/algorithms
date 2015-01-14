def switch(string, pos_start, pos_end)
  temp = string[pos_end]
  string[pos_end] = string[pos_start]
  string[pos_start] = temp
  string
end

def separate_0_1(string)
  pos_start = 0
  pos_end = string.length - 1
  while(pos_start<pos_end)
    if string[pos_start] == "1"
      while(string[pos_end] != "0")
        pos_end -= 1
      end
      switch(string, pos_start, pos_end)
    end
    pos_start += 1
  end
  string
end

original_string = "0001010100101110001"
separated_string = separate_0_1(original_string.dup)

puts "Original string:  #{original_string}"
puts "Separated string: #{separated_string}"
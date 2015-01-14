def reverse(string)
  pos_start = 0
  pos_end = string.length - 1
  while (pos_start < pos_end)
    temp = string[pos_end]
    string[pos_end] = string[pos_start]
    string[pos_start] = temp
    pos_start += 1
    pos_end -= 1
  end
  string
end

example = "This is a string."
puts "Example string: #{example}"

puts "Reversed string: #{reverse(example)}"
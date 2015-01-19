# The sum for  [1..(N + 1)] = n(n+1)/2

def solution(a)
    # write your code in Ruby 1.9.3
    sum = 0
    a.each {|el| sum += el}

    full = (a.length + 1)*(a.length + 2) / 2

    return full - sum
end

res = solution([2,3,1,5])

puts "Solution: #{res}"
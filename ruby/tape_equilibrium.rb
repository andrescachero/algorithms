def solution(a)
    # write your code in Ruby 1.9.3
    ls = 0
    rs = a.inject(:+)
    min_res = nil
    (0..a.length-2).each do |p|
      ls += a[p]
      rs -= a[p]
      diff_p = (ls - rs).abs
      min_res = diff_p if min_res.nil? || diff_p < min_res
    end
    min_res
end



res = solution([3,1,2,4,3])

puts "Solution: #{res}"
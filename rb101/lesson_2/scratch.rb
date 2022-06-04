def sum_smallest_two(arr)
  s = arr[0]
  ns = arr[1]
  # if ns < s
    # swap = s
    # s = ns
    # ns = s
  # end

  arr.each do |c|
    if c < s
      swap = s
      s = c
      ns = swap
    elsif c == s
      ns = c
    elsif c < ns
      ns = c
    end
  end

  s + ns
end

p sum_smallest_two([56, 39, 29, 34, 85])
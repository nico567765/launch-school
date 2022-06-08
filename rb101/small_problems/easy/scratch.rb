def geo_seq(start, ratio, n)
  seq = []
  until n < 1
    seq.unshift(start*(ratio ** (n-1)))
    n -= 1
  end
  seq
end

p geo_seq(5, 2, 5)
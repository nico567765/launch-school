test = Array.new(3) { [] }
p test
i = 0
until i >= test.size
  p test[i].object_id
  i += 1
end

test[1] << 3
p test

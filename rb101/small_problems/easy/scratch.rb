def find_it(seq)
  seq.reduce(:^)
end

p find_it([1, 1, 3, 1, 3, 1 , 10])
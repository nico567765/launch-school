a = [1,2,3]

def cc(str)
  str += str
  str[1] = 34
  p str
end

p "Before cc method: #{a}"
cc(a)
p "After cc method: #{a}"
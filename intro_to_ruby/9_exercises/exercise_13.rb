arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |elem| elem.start_with?("s") }
p arr

arr.insert(0, 'snow')
arr.insert(3, 'slippery')
arr.insert(4, 'salted roads')
p arr

arr.delete_if { |elem| elem.start_with?("s") || elem.start_with?("w") }
p arr
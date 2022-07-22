# def resolve_arguments(arr, args)
#   if arr.size == 2
#     separator1 = ''
#     args[0] ? separator2 = args[0] : separator2 = 'or'
#   else
#     args[0] ? separator1 = args[0] : separator1 = ', '
#     args[1] ? separator2 = args[1] : separator2 = 'or'
#   end

#   [separator1, separator2]
# end

# def joinor(arr, *args)
#   return arr[0].to_i if arr.size == 1
#   separator1, separator2 = resolve_arguments(arr, args)

#   str = ''
#   if arr.size == 2
#     str << arr[0].to_s + ' ' + separator2 + ' ' + arr[1].to_s
#   else
#     arr.each_with_index do |elem, i|
#       if i == arr.size - 1
#         str << separator2 + ' ' + elem.to_s
#       else
#         str << elem.to_s + separator1
#       end
#     end
#   end
#   str
# end

# def joinor(arr, separator1 = ', ', separator2 = 'or')
#   return arr[0].to_i if arr.size == 1

#   str = ''

#   if arr.size == 2
#     str << arr[0].to_s + ' ' + separator2 + ' ' + arr[1].to_s
#   else
#     arr.each_with_index do |elem, i|
#       if i == arr.size - 1
#         str << separator2 + ' ' + elem.to_s
#       else
#         str << elem.to_s + separator1
#       end
#     end
#   end
#   str
# end

def joinor(arr, separator1 = ', ', separator2 = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{separator2} ")
  else
    arr[-1] = "#{separator2} #{arr.last}"
    arr.join(separator1)
  end
end

p joinor([])

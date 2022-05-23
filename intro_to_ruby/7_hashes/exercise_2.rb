hash_browns = { potatoes: "2 medium russet potatoes, shredded", onions: "1/2 medium onion, finely chopped", flour: "1/4 cup all-purpose flour", eggs: "1 egg", oil: "1 cup oil for frying, or as needed", seasoning: "salt and pepper to taste" }
brownies = { chocolate: "1 bar of chocolate", butter: "1 cup butter", honey: "3/4 cup honey", eggs: "4 eggs", sugar: "1 tbsp vanilla sugar", seasoning: "1 pinch salt, some cinnamon", flour: "1/2 cup flour", baking_powder: "1/2 tsp baking powder", nuts: "1/2 cup chopped nuts" }

print("\n\n", hash_browns, "\n\n")
puts "now we run the #merge method:"
new_hash = hash_browns.merge(brownies)
print(new_hash, "\n\n")
puts "and yet nothing has changed in the orginal hash:"
print(hash_browns, "\n")
puts "\nbut what if we run the #merge! method..."
hash_browns.merge!(brownies)
puts "...now the original hash has been permanently merged with the second hash and any duplicate keys such as 'eggs' have had their values over-written with those of the second hash"
print("\n", hash_browns, "\n\n")
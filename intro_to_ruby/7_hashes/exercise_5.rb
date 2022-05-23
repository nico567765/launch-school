hash_browns = {   potatoes: "2 medium russet potatoes, shredded", 
                  onions: "1/2 medium onion, finely chopped", 
                  flour: "1/4 cup all-purpose flour", 
                  eggs: "1 egg", 
                  oil: "1 cup oil for frying, or as needed", 
                  seasoning: "salt and pepper to taste" }

value = "1 egg"

hash_browns.each_value do |v|
  if v == value
    puts "got 'em"
  end
end

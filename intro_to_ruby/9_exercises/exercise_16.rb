contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.each_with_index do |(name, sub_hash), idx|
  [:email, :address, :phone].each do |field|
    sub_hash[field] = contact_data[idx].shift
  end
end
p contacts

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data.each do |sub_arr|
  if /joe/ =~ sub_arr[0]
    person = "Joe Smith"
  elsif /sally/ =~ sub_arr[0]
    person = "Sally Johnson"
  end
  contacts[person][:email] = sub_arr[0]
  contacts[person][:address] = sub_arr[1]
  contacts[person][:phone] = sub_arr[2]
end
p contacts
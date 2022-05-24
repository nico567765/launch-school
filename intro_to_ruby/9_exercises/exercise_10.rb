# hash values can be arrays, e.g.
hash_of_arrays = { arr1: [1,2,3,4,5], arr2: [6,7,8,9,10]}
p hash_of_arrays[:arr2][3]

# you can also make an array of hashes, e.g.
array_of_hashes = [{animal: "lizard", plant: "fern"}, {animal: "turtle", plant: "algae"}]
p array_of_hashes[1][:plant]
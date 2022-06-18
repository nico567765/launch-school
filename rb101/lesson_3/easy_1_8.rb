flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.select! { |k,v| [k,v] if k == 'Barney'}
flintstones = flintstones.to_a.flatten
p flintstones

# LS solution

# flintstones = flintstones.assoc("Barney")
# p flintstones
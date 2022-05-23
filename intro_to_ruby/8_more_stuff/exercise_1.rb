words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

words.each do |word|
  if /lab/ =~ word
    puts word
  end
end
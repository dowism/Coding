=begin
Comparing two speeches

Let's use what we learned in histograms to compare two speeches.
first you need to learn how to import a file as a string



=end

text=File.read("trump.txt")

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word|
  freeword=word.gsub(/\W/,'')#Added this line to remove punctuation
  frequencies[freeword] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }


=begin

What you compared:

How they compared:


What did you add to the program?




=end

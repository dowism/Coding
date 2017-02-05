#fizzbuzz: make the numbers divisible by 3 fizz, by 5 buzz, by 15 fizzbuzz
#do it in less than 10 minutes? 5 minutes? 3 minutes?


numbers = (1...100).to_a

for i in numbers do
  if i%15==0
    puts (i).to_s+" Fizzbuzz"
  elsif i%3==0
    puts (i).to_s+" Fizz"
  elsif i%5==0
    puts (i).to_s+" Buzz"
  end
end



#2 reverse a string without using .reverse
one way

str = "This is the test string"
rev =""
i=0
k=str.length-1
str.length.times do |char|

  rev[i]=str[k]
  k-=1
  i+=1
end
puts rev

#3 take a string, and each letter make it into the next letter. so "fun times" "gvO Ujnft"
#3.1
str="fun times!"
str=str.split("")
letters =('a'..'z').to_a
output=Array.new
for chars in str do
  alreadydone=false
  for letter in letters do
    if letter==chars
      output.push(chars.next)

      alreadydone=true
      break;
    end
  end
  output.push(chars) if !alreadydone
end
vowels="aeiou"
vowels=vowels.split("")
final=Array.new

for letter in output
  upcase=false
  for vowel in vowels
    puts letter + " and " + vowel
    if letter==vowel
      puts "upcase"
      final.push(vowel.upcase)
      upcase=true
    end

  end
  puts "not upcase" if !upcase
  final.push(letter) if !upcase
end

print output.join("")
print final.join("")

#3.2 it doesn't work right now
def isingroup(element,group)
  element=element.split("")
  isingroup=false
  for part in element
    for item in group
      if part==item
        isingroup=true
      end
    end
  end
  return isingroup
end

str="fun times!".split("")
alphabet=("a".."z").to_a
vowels="aeiou".split("")
output=Array.new
for char in str
  if isingroup(char,alphabet)
    if isinggroup(char,vowels)
      output.push(char.next.upcase)
    else
      output.push(char.next)
    end
  else
    output.push(char)
  end
  if
end

puts output.join("")

#4 Easy, print every other letter of a string so "This is the string" turns into "Ti stesrn"

#5 Write a function that combines two arrays by alternatingly taking elements. For example: given the two arrays ["a", "b", "c] and ["bo", "ro", "me"], the function should return ["a", "bo", "b", "ro", "c", "me"].

def alternate(a,b)
  c=Array.new
  for a.length

  a.each do |el|
    c.push(el)

=begin
In this lesson students are matching the inputs with the output given some code at the beginning.

nil is a falsey value, if used as a logical value it will evaluate to false, but it is not == to false.

*variable as an input will take as many inputs as you want to give it. It is a way of telling ruby you don't know how many elements you will be giving it

block methods can take a block of code in {} as an argument, and will go wherever the yield keyword is written
=end

def twostrings(a,b)
  combined=b+a
  puts combined
end

def square(x)
  return x**2
end

def squareputs(x)
  puts x**2
end



def squaresplat(*x)
  print x*5
end

def squareblock(x)
  print x*5
  if block_given?
    yield
  end
end


def my_block_method
  yield
end


def all_about_me(name, age=100, *pets)
 puts "My name is #{name}"
 puts "I'm #{age} years old"
 if block_given?
   yield pets
 else
   puts pets
 end
end


def nilcheck()
  if nil
   puts "Will this text be printed?"
 end
end

def nilcheck2()
  if !nil
   puts "What about this text?"
  end
end

#Calls
#match the function calls with the output, then answer the questions
1. twostrings("This Print","Does")
2. twostrings(0,1)
3. squared=square(4)
4. squaredputs=squareputs(4)
5. nilcheck()
6. nilcheck2()
7. squaresplat(234)
8. squaresplat(2,3,4)
9. all_about_me('Ruben', 'Smalls', 'Chucky Jim')
10. all_about_me('Ruben', 12, 'Smalls', 'Chucky Jim') { |words| puts
words.join(' and ') }
11. squareblock(2){print " 1 5 "}
12. my_block_method { 1 + 1 }

#outputs, some do not match any inputs
a. My name is Ruben
I'm 12 years old
=> "Smalls and Chucky Jim"

b. 2
c. [234, 234, 234, 234, 234]
d. 10 1 5
e. squaredputs is set to nil
f. Will this text be printed?
g. error, wrong number of arguments
h. What about this text?
i. [2, 3, 4, 2, 3, 4, 2, 3, 4, 2, 3, 4, 2, 3, 4]
j. square is set to nil
k.
  My name is Ruben
  I'm Smalls years old
  Chucky Jim
l. DoesThis Print
m. squaredputs is set to 16
n. square is set to 16
o. "2"
p. 1

Questions:
1. Does square or squaredputs get set to nil? Why?
2. What will happen if you set twostrings(3,5) to a variable?
3. If I put twostrings("bye","good") in the function 4. what is a? what is b? what does it return?
does the order in which you input variables into a functino matter?
5. Can any function take a block? what makes the block that is passed to a function usable?
6. What happens when no block is given to this function:
def squareblock(x)
  print x*5
    yield
end

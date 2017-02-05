#first kata:take a digit, square each individual digit, then return the resulting digit, 991 turns into 81811
def square_digits num
  num=num.to_s.split("")
  final=String.new
  num.each do |number|
    integer=number.to_i
    numsquare=integer**2
    final+=numsquare.to_s
  end
    final.to_i
end

square_digits(12)

#2Given an array, find the int that appears an odd number of times. There will always be only one integer that appears an odd number of times.
def find_it(seq)
  uniqueInts=seq.uniq

  uniqueInts.each do |value|
    k=0
    seq.each do |mainSeq|
      k+=1 if mainSeq==value
    end
      return value if k%2==1
  end
end
find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
  #your code here
end

#3 Your task is to split the chocolate bar of given dimension n x m into small squares. Each square is of size 1x1 and unbreakable. Implement a function that will return minimum number of breaks needed. For example if you are given a chocolate bar of size 2 x 1 you can split it to single squares in just one break, but for size 3 x 1 you must do two breaks.If input data is invalid you should return 0 (as in no breaks are needed if we do not have any chocolate to split). Input will always be a non-negative integer.

=begin https://www.codewars.com/kata/thinkful-list-and-loop-drills-inverse-slicer
4:
You're familiar with list slicing in Python and know, for example, that:

>>> ages = [12, 14, 63, 72, 55, 24]
>>> ages[2:4]
[63, 72]
>>> ages[2:]
[63, 72, 55, 24]
>>> ages[:3]
[12, 14, 63]
write a function inverse_slice() that takes three arguments: a list items, an integer a and an integer b. The function should return a new list with the slice specified by items[a:b] excluded. For example:

>>>inverse_slice([12, 14, 63, 72, 55, 24], 2, 4)
[12, 14, 55, 24]
The input will always be a valid list, a and b will always be different integers equal to or greater than zero, but they may be zero or be larger than the length of the list.
=end

=begin https://www.codewars.com/kata/sum-of-a-sequence
5 Description:

Your task is to make function, which returns the sum of a sequence of integers.

The sequence is defined by 3 non-negative values: begin, end, step.

If begin value is greater than the end, function should returns 0

Examples

This is the first kata in the series:

1) Sum of a sequence (this kata)
2) Sum of a Sequence [Hard-Core Version]
=end

=begin
Some numbers have funny properties. For example:

89 --> 8¹ + 9² = 89 * 1

695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2

46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51
Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p we want to find a positive integer k, if it exists, such as the sum of the digits of n taken to the successive powers of p is equal to k * n. In other words:

Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k
If it is the case we will return k, if not return -1.

Note: n, p will always be given as strictly positive integers.
=end
def dig_pow(n, p)
    num=n.to_s.chars.map { |e| e.to_i }
    k=p
    result=Array.new
    num.each do |x|
      result<<x**k
      k+=1
    end
    if result.reduce(0,:+)%n==0
      return p
    else
      return -1
    end
end

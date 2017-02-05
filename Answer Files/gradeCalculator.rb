puts "Please give me the number of points you test is worth."
testPoints = gets.to_f
puts "Please give me the number of points in your grade."
totalPoints = gets.to_f
testGradePercentage = testPoints/totalPoints*100

puts "This test will be worth #{testGradePercentage}% of your grade."
puts "Please give me your grade in the class."
hasPoints = gets.to_f/100*totalPoints


=begin
puts case
when totalGradePercentage>=90
puts "Well done! You have an A."
when totalGradePercentage>=80&&totalGradePercentage<90
puts "You have a B."
when totalGradePercentage>=70&&totalGradePercentage<80
puts "You have a C."
when totalGradePercentage>=60&&totalGradePercentage<70
puts "You have a D."
else
puts "You have an F."
end
=end

totalPointsWithTest = totalPoints+testPoints
puts "What do you want in the class?"
dreamGrade = gets.to_f
totalDreamGrade = (dreamGrade/100)*totalPointsWithTest
neededTestGrade = ((totalDreamGrade-hasPoints)/(totalPointsWithTest-totalPoints))*100
puts "To get a #{dreamGrade}% in the class you will need  a #{neededTestGrade}% on the test. Good luck!"


=begin
Program #2
#Put in testPoints like the points in the test, totalPoints as total points in the gradebook, hasGrade as the percentage you have in the class, and dreamGrade as the dream percentage you want in the class. i.e.testGrade(40,397,90,90)
def testGrade(testPoints,totalPoints,hasGrade,dreamGrade)
  def decimalPoints(num) #Round the numbers to two decimal points
    num.to_f
    num.round(2)
  end
  testPoints = decimalPoints(testPoints)
  totalPoints = decimalPoints(totalPoints)
  hasGrade = decimalPoints(hasGrade)
  dreamGrade = decimalPoints(dreamGrade)
  testGradePercentage = (testPoints/totalPoints)*100 #calculates the percentage of the grade the test will cost
  testGradePercentage = decimalPoints(testGradePercentage)#Rounds to two points
  puts "This test will be worth #{testGradePercentage}% of your grade."
  newHasPoints = (hasGrade/100)*totalPoints #calculates the points you have in the gradebook vs total
  totalPointsWithTest = totalPoints+testPoints #calculates the total number of points in the gradebook with the test
  totalDreamGrade = (dreamGrade/100)*totalPointsWithTest #calculates the total number of points you will need to get a certain grade in the class
  neededTestGrade = ((totalDreamGrade-newHasPoints)/(totalPointsWithTest-totalPoints))*100 #calculates the number of points you will need to get on your test to make that happen
  neededTestGrade = decimalPoints(neededTestGrade) #Rounds to two points
  puts "To get a #{dreamGrade}% in the class you will need  a #{neededTestGrade}% on the test. Good luck!"
    if neededTestGrade>100
      puts "Unless you get extra-credit, this will be impossible to achieve."
    end
end
testGrade(40,397,90,90)
=end

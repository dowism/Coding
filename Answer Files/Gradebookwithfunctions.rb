#Now you will be creating a gradebook for students

apCalc={
  assignments:{hw1:3,hw2:3,test1:10}
  }


algebra2={
  assignments:{hw1:3,hw2:3,quiz1:10}
  }

seth={
  grades:{
    hw1:3,
    hw2:3,
    quiz1:8}
}


def addAssignment(classname,assignmentname,points)
  classname[:assignments][assignmentname]=points
end

def overallgrade(student,classname)
  totalpoints=classname[:assignments].values.reduce(:+)
  studentpoints=student[:grades].values.reduce(:+)
  puts studentpoints/totalpoints.to_f
end

def accessobject(object,symbol)
  puts object[symbol]
end

accessobject(apCalc,"assignments")

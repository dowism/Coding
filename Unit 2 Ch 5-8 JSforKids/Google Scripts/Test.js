contacts=[["Emily Koren","EK Email"],["andrew Giordano","AG email"],["andy knox","AK email"],["Joanne knox","jk email"]]

var teachers="Emily Koren, Joanne Knox, Ambrose Tuscano, Alexis Cooper, Seth Dow, Nate Calabro, Kristen Giordano, (Andrew|Andy) Giordano, (Andrew|Andy) Knox, Diego Panasiti"

var next= teachers.split(',')
list=[]
for (var i = 0; i < next.length; i++) {
  list[i]=next[i].trim()
}

uniqueTeachers=list

k=0
teacherEmails=[]
  for (var i = 0; i < uniqueTeachers.length; i++) {

    for (var j = 0; j < contacts.length; j++) {
        // Here I turn the teacher of classes to a Reg ex to handle nicknames
        // and shortened version of names, as well as ignoring case
          var regularex = new RegExp(uniqueTeachers[i],"i")


      if(uniqueTeachers[i]==""){continue;
    } else if (regularex.test(contacts[j][0]) {
          teacherEmails[k]=contacts[j][1]
          k++
        }
    }
  }
  console.log(uniqueTeachers)
  console.log(teacherEmails)

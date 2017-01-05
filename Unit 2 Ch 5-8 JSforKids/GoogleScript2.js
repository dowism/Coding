/*
Last Version: LoopsThrough
this version will make the locations of the students traveling a variable at the beginning
it will also switch all ranges onto the real sheet

*/
function onOpen() {
  var ui = SpreadsheetApp.getUi();
  // Or DocumentApp or FormApp.
  ui.createMenu('Create Travel')
      .addItem('Make a Travel Syllabus', 'studentsTravelling')
      .addToUi();
}


rowOfStudentsTravelling=2
columnOfStudentsTravelling=2
rowOfFirstClass=14
columnOfFirstClass=1
rowOfLastClass=45


function studentsTravelling(){
  SpreadsheetApp.getUi()
  //get the sheet
  var sheet =  SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Sheet1");
  //loop through all of the classes starting at the first row and going to the last row
for (var i = rowOfFirstClass; i < rowOfLastClass+1; i++) {
  //check to see if anyone is in the class, i is the row that is being checked
  travelAndClass=students(i);

  if(travelAndClass!=""){
  //if there is someone in the class, create a row
  sheet.appendRow([className(i),travelAndClass]);
  }
}
}


//this returns the list of students that are both travelling and in classes
function students(row){
  //creates an array of students travelling
  studentsTravelling = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Sheet1").getRange(rowOfStudentsTravelling,columnOfStudentsTravelling).getValue().split("\n")
  //creates an array of students in the class
  studentsInClass = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Sheet1").getRange(row,2).getValue().split("\n")
  //sets up an empty string to be filled with students in the following loop through arrays
  inClassAndOnTrip=""
  for (var i = 0; i < studentsTravelling.length; i++) {
    for (var j = 0; j < studentsInClass.length; j++) {
        if (studentsTravelling[i]==studentsInClass[j]) {
          inClassAndOnTrip+=studentsTravelling[i]+"\n"
        }
    }
  }
  return inClassAndOnTrip
}


function className(row){
  title = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Sheet1").getRange(row,1).getValue()
  return title
}

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
      .addItem('Email Syllabus', 'emailToStudents')
      .addToUi();
  //sets the sharing so that anyone with link can view
  SpreadsheetApp.getActiveSpreadsheet().setSharing(DriveApp.Access.ANYONE_WITH_LINK, DriveApp.Permission.VIEW);
}


rowOfStudentsTravelling=2
columnOfStudentsTravelling=2
rowOfFirstClass=14
columnOfFirstClass=1
rowOfLastClass=45


function studentsTravelling(){

  SpreadsheetApp.getUi()

// get the sheet

  var sheet =  SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Sheet1");
// loop through all of the classes starting at the first row and going to the last row
  k=0
  for (var i = rowOfFirstClass; i < rowOfLastClass+1; i++) {
  
// gets the students who are are in the class on that row and compares
// them with the travelling students, makes an array serperated by \n
  travelAndClass=students(i);

  if(travelAndClass!=""){
  //if there is someone in the class, create a row
  sheet.appendRow([className(i),travelAndClass]);
  //format the row like the class that it came from
  formattingTheRows(i,46+k);
  k++
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

function emailToStudents(){
// Get the names of the students travelling as an array
studentsTravelling = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Sheet1").getRange(rowOfStudentsTravelling,columnOfStudentsTravelling).getValue().split("\n")

// loop through contacts and grab emails from matches with students travelling

// get the contacts through a static range from rows 1 to 200 column a and b. they can be called with contacts[row][column]

contacts = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Contacts").getRange("A1:B200").getValues();

// checks to see if the contacts exist in an array

Logger.log(contacts[19][0])

// loops the student names through the contacts, when they match it grabs the email and adds it to the array student emails
studentEmails=[]
k=0
  for (var i = 0; i < studentsTravelling.length; i++) {
    for (var j = 0; j < contacts.length; j++) {
        if (studentsTravelling[i]==contacts[j][0]) {
          studentEmails[k]=contacts[j][1]
          k++
        }
    }
  }
// checks to see if the loop worked
Logger.log(studentEmails)

// check to see the first email on the list
for (var i = 0; i < studentEmails.length; i++) {
email=studentEmails[i];
}

// Get the URL of the document.
  var url = SpreadsheetApp.getActiveSpreadsheet().getUrl();

// Get the name of the document to use as an email subject line.
  var subject = SpreadsheetApp.getActiveSpreadsheet().getName();

// Append a new string to the "url" variable to use as an email body.
  var body = 'Here is the link to your syllabus for the upcoming trip: ' + url;
  
  // Send an email with a link to the document.
  GmailApp.sendEmail(email, subject, body);
  

}

function formattingTheRows(rowofsource,rowofdestination){
  var ss = SpreadsheetApp.getActiveSpreadsheet();
 var source = ss.getSheets()[0];
 var destination = ss.getSheets()[0];
//getRange(row, column, numRows, numColumns)
 var range = source.getRange(rowofsource,1,1,7);

 // This copies the formatting in A14:A16 in the source sheet to
 // D4:F6 in the second sheet
 //copyFormatToRange(sheet, column, columnEnd, row, rowEnd)
 range.copyFormatToRange(destination, 1, 6, rowofdestination, rowofdestination);
}

function deleteTheOldRows(){
 var ss = SpreadsheetApp.getActiveSpreadsheet();
 var sheet = ss.getSheets()[0];
 // Rows start at "1" - this will delete the first row

 sheet.deleteRow();
}

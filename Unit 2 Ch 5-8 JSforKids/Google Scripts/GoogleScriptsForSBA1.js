//this is the function to create a list of all the classes and their students from the master spreadsheet
function className(row,column){
  //first we have to make a path to the class
  //The hierarchy is Spreadsheet --> Sheet --> Range --> Cell.

  var sheet = SpreadsheetApp.getActiveSheet();
  var range = sheet.getRange(row,column);
  var className = range.getValue();
  return className //returns the value in the sheet
}

function studentsInClass(row,column){
  //first we have to make a path to the class
  //The hierarchy is Spreadsheet --> Sheet --> Range --> Cell.

  var sheet = SpreadsheetApp.getActiveSheet();
  var range = sheet.getRange(row,column);
  var classStudents = range.getValue();
  return classStudents //returns the value in the sheet
}



function addClassAndStudents() {
  var sheet = SpreadsheetApp.getActiveSheet();
  for (var i = 0; i < 45-14; i++) {
    sheet.appendRow([className(14+i,1),studentsInClass(14+i,2)]);
  }

}

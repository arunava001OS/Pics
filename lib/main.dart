//need to import some code from flutter to work on this project
//the word 'package:' specifies the source of import as a third party library not a dart standard library
//the word 'flutter' after ':' specifies the name of the library we are importing from
//the word 'material.dart' specifies the name of the file we are importing
import 'package:flutter/material.dart';
//import the new custom widget app.dart
import 'src/app.dart';

//Define  a 'main' function to run when our app starts
void main(){
  //Creating a text widget to show on the screen
  var app = App();  //create instance of the custom made widget
  //Get the widget and display it on the screen
  runApp(app);
}





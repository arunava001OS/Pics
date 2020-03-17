//CREATING A CUSTOM WIDGET

//Import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get; //only import get function
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';
//create a class that will be our custom widget & this class must extend the
//StateLessWidget base class
// Stateless widget vs Statefull widget refer which one to use when

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

//this <> syntax is generic classes for dart . Refer online
class AppState extends State<App> {
  List<ImageModel> images = [];
  int counter = 0; //instance variable
  //function to fetch images
  void fetchImage() async {
    counter++;
    final response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    final imagemodel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imagemodel);  //after updating an instance we have to call the setState function
    });
    print('Hello');
    print(images);
    
  }
  //must define a 'build' methodthat returns the widgets that *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Let\'s see some images    $counter '),
        ),
        body: 
        ImageList(images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add), //Shows an icon  of Icons.icon_name from materials.io page
        ),
      ),
    );
  }
}

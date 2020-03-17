import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel>
      images; //StatelessWidget must have final data values and not something that can be changed over time

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, int index) {
          return imagebuilder(images[index]);
        });
  }

  Widget imagebuilder(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      child: Column(children: <Widget>[
        Image.network(image.url),
        Padding(
          child: Text(image.title),
          padding: EdgeInsets.only(top : 5.0,),
        ),
      ],),
    );
  }
}

//https://jsonplaceholder.typicode.com/photos extracts json from this url and stores in the image model

class ImageModel{
  int id;
  String url;
  String title;

  ImageModel(this.id,this.url,this.title); //constructor
  //refer dart maps
  ImageModel.fromJson(Map<String,dynamic> parsedJson){
    id = parsedJson["id"];
    url = parsedJson["url"];
    title = parsedJson["title"];
  }
}
class ImageData {
  String imageName;
  String category;

  ImageData({required this.imageName, required this.category});
}

class ImageModel {
  List<ImageData> images = [
    ImageData(imageName: "glassesandphone.jpg", category: "Phones"),
    ImageData(imageName: "christmas.jpg", category: "Christmas"),
    ImageData(imageName: "white.jpg", category: "Sea Food"),
    ImageData(imageName: "light.jpg", category: "Revolve Food"),
  ];
}

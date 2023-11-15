import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class DataModel {
  String name;
  String img;
  int price;
  int people;
  int stars;
  String description;
  String location;
  DataModel({
    required this.name,
    required this.img,
    required this.price,
    required this.people,
    required this.stars,
    required this.description,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'img': img,
      'price': price,
      'people': people,
      'stars': stars,
      'description': description,
      'location': location,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      name: map['name'] as String,
      img: map['img'] as String,
      price: map['price'] as int,
      people: map['people'] as int,
      stars: map['stars'] as int,
      description: map['description'] as String,
      location: map['location'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataModel.fromJson(String source) =>
      DataModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

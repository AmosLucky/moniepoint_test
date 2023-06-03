// To parse this JSON data, do
//
//     final store = storeFromJson(jsonString);

import 'dart:convert';

Store storeFromJson(String str) => Store.fromJson(json.decode(str));

String storeToJson(Store data) => json.encode(data.toJson());

class Store {
  int id;
  String name;
  String image;
  String lastSeen;
  String response;
  double rating;
  List<Map> reviews;
  String reviewsCount;
  List<Map> reviewsImage;

  Store({
    required this.id,
    required this.name,
    required this.image,
    required this.lastSeen,
    required this.response,
    required this.rating,
    required this.reviews,
    required this.reviewsCount,
    required this.reviewsImage,
  });

  factory Store.fromJson(Map<String, dynamic> json) => Store(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      lastSeen: json["last_seen"],
      response: json["response"],
      rating: json["rating"]?.toDouble(),
      reviews: json["reviews"],
      reviewsCount: json["reviews_count"],
      reviewsImage: json["reviews_image"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "last_seen": lastSeen,
        "response": response,
        "rating": rating,
        "reviews": reviews,
        "reviews_count": reviewsCount,
        "reviews_image": reviewsImage,
      };
}

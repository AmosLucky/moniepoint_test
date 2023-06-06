// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  dynamic id;
  dynamic price;
  String title;
  String category;
  String store;
  dynamic storeId;
  dynamic rating;
  dynamic ratingCount;
  String description;
  int sold;
  int reviews;
  String brand;
  String color;
  String material;
  String condition;
  String delivery;
  String shipping;
  String arrival;
  List<String> images;

  Product(
      {required this.id,
      required this.title,
      required this.category,
      required this.store,
      required this.storeId,
      required this.rating,
      required this.ratingCount,
      required this.description,
      required this.sold,
      required this.reviews,
      required this.brand,
      required this.color,
      required this.material,
      required this.condition,
      required this.delivery,
      required this.shipping,
      required this.arrival,
      required this.images,
      required this.price});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        category: json["category"],
        store: json["store"],
        storeId: json["store_id"],
        rating: json["rating"],
        ratingCount: json["rating_count"],
        description: json["description"],
        sold: json["sold"],
        reviews: json["reviews"],
        brand: json["brand"],
        color: json["color"],
        material: json["material"],
        condition: json["condition"],
        delivery: json["delivery"],
        shipping: json["shipping"],
        arrival: json["arrival"],
        price: json['price'],
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "category": category,
        "store": store,
        "store_id": storeId,
        "rating": rating,
        "rating_count": ratingCount,
        "description": description,
        "sold": sold,
        "reviews": reviews,
        "brand": brand,
        "color": color,
        "material": material,
        "condition": condition,
        "delivery": delivery,
        "shipping": shipping,
        "arrival": arrival,
        "price": price,
        "images": [],
      };
}

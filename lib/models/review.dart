// To parse this JSON data, do
//
//     final review = reviewFromJson(jsonString);

import 'dart:convert';

Review reviewFromJson(String str) => Review.fromJson(json.decode(str));

String reviewToJson(Review data) => json.encode(data.toJson());

class Review {
    int id;
    String name;
    String image;
    String rating;
    List<dynamic> tags;
    String comment;

    Review({
        required this.id,
        required this.name,
        required this.image,
        required this.rating,
        required this.tags,
        required this.comment,
    });

    factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        rating: json["rating"],
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
        comment: json["comment"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "rating": rating,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "comment": comment,
    };
}

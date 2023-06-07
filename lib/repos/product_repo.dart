import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductRepo extends ChangeNotifier {
  List _products = [];
  List get products => _products;

  Future fetchProduct() async {
    try {
      final String response =
          await rootBundle.loadString('assets/json/products.json');
      var productMap = await json.decode(response);
      print(productMap);

      return (productMap);
    } catch (e) {
      print(e.toString());
    }
  }

  String trimTitle(String title) {
    if (title.length > 20) {
      return title.substring(0, 20);
    } else {
      return title;
    }
  }

  String addDollar(dynamic price) {
    return "\$" + price.toString();
  }

  setFavourite(favourite) {
    if (favourite == Icons.favorite_outline) {
      favourite = Icons.favorite;
    } else {
      favourite = Icons.favorite_outline;
    }

    return favourite;
  }

  List fetchFeaturedProduct() {
    return [
      {
        "id": 1,
        "price": 100.0,
        "title": "How do you show a dollar sign  in Flutter? - Google Groups",
        "category": "category",
        "store": "store",
        "store_id": 1,
        "rating": "21K",
        "rating_count": "234",
        "description": "description",
        "sold": "12",
        "reviews": "13K",
        "brand": "brand",
        "color": "color",
        "material": "material",
        "condition": "condition",
        "delivery": "delivery",
        "shipping": "shipping",
        "arrival": "arrival",
        "images": [
          "assets/images/10.png",
          "assets/images/4.png",
          "assets/images/5.png",
          "assets/images/6.png",
        ]
      },
      {
        "id": 1,
        "price": 500.0,
        "title": "How do you show a dollar sign  in Flutter? - Google Groups",
        "category": "category",
        "store": "store",
        "store_id": 1,
        "rating": 21,
        "rating_count": 23,
        "description": "description",
        "sold": 12,
        "reviews": 13,
        "brand": "brand",
        "color": "color",
        "material": "material",
        "condition": "condition",
        "delivery": "delivery",
        "shipping": "shipping",
        "arrival": "arrival",
        "images": [
          "assets/images/6.png",
          "assets/images/7.png",
          "assets/images/5.png",
          "assets/images/6.png",
          "assets/images/7.png"
        ]
      },
      {
        "id": 1,
        "price": 250,
        "title": "How do you show a dollar sign  in Flutter? - Google Groups",
        "category": "category",
        "store": "store",
        "store_id": 1,
        "rating": "21",
        "rating_count": "23",
        "description": "description",
        "sold": "12",
        "reviews": "13K",
        "brand": "brand",
        "color": "color",
        "material": "material",
        "condition": "condition",
        "delivery": "delivery",
        "shipping": "shipping",
        "arrival": "arrival",
        "images": [
          "assets/images/1.png",
          "assets/images/4.png",
          "assets/images/5.png",
          "assets/images/6.png"
        ]
      },
      {
        "id": 1,
        "price": 250,
        "title": "How do you show a dollar sign  in Flutter? - Google Groups",
        "category": "category",
        "store": "store",
        "store_id": 1,
        "rating": "21",
        "rating_count": "23",
        "description": "description",
        "sold": "12",
        "reviews": "13K",
        "brand": "brand",
        "color": "color",
        "material": "material",
        "condition": "condition",
        "delivery": "delivery",
        "shipping": "shipping",
        "arrival": "arrival",
        "images": [
          "assets/images/6.png",
          "assets/images/4.png",
          "assets/images/5.png",
          "assets/images/6.png",
          "assets/images/7.png"
        ]
      }
    ];
  }
}

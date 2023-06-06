import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductRepo extends ChangeNotifier {
  IconData _favourite = Icons.favorite_outline;
  get favourite => _favourite;

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
    if (title.length > 30) {
      return title.substring(0, 30);
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
}

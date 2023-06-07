import 'package:flutter/material.dart';
import 'package:moniepoint_test/models/product.dart';
import 'package:moniepoint_test/widgets/rating_widget.dart';

import 'card_rating.dart';

// ignore: must_be_immutable
class RatingDetails extends StatelessWidget {
  Product product;
  RatingDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: CardRating(
            rating: product.rating,
            ratingCount: "Rating",
          )),
          Expanded(child: RatingWidget(text: "${product.reviews} Reviews")),
          Expanded(child: RatingWidget(text: "${product.sold} Sold"))
        ],
      ),
    );
  }
}

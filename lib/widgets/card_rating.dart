import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';
import 'package:moniepoint_test/widgets/rating_widget.dart';

// ignore: must_be_immutable
class CardRating extends StatelessWidget {
  var rating;
  var ratingCount;
  CardRating({super.key, required this.rating, required this.ratingCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          (Icon(
            Icons.star,
            color: orange,
            size: 20,
          )),
          Expanded(
              child: RatingWidget(
            text: rating.toString() + "|" + ratingCount.toString(),
          )),
          Container(),
        ],
      ),
    );
  }
}

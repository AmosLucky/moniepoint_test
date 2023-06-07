import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

// ignore: must_be_immutable
class RatingRow extends StatelessWidget {
  var rating;
  var percent;
  var reviews;
  RatingRow(
      {super.key,
      required this.rating,
      required this.percent,
      required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Icon(
          Icons.star,
          color: Colors.orange,
        )),
        Expanded(child: Text(rating.toString())),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: 80,
          child: LinearPercentIndicator(
            width: 80.0,
            lineHeight: 8.0,
            percent: percent,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: primaryColor,
          ),
        ),
        Expanded(child: Text(reviews.toString()))
      ],
    );
  }
}

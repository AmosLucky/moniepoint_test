import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimensions.dart';

// ignore: must_be_immutable
class DetailedThumbNail extends StatelessWidget {
  List<String> images;
  DetailedThumbNail({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: Dimensions().getWidth(context),
      height: 300,
      color: lightGrey,
      child: Stack(
        children: [
          Image.asset(
            images[0],
            fit: BoxFit.fill,
            width: Dimensions().getWidth(context),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
                children: images
                    .map((e) => SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            e,
                            fit: BoxFit.fill,
                          ),
                        ))
                    .toList()),
          )
        ],
      ),
    );
  }
}

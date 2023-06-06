import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';
import 'package:moniepoint_test/models/product.dart';
import 'package:moniepoint_test/widgets/price_widget.dart';
import 'package:moniepoint_test/widgets/product_category.dart';
import 'package:moniepoint_test/widgets/product_imge.dart';
import 'package:moniepoint_test/widgets/product_title.dart';

import 'card_rating.dart';

// ignore: must_be_immutable
class SingleProduct extends StatefulWidget {
  Product product;
  SingleProduct({super.key, required this.product});

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: lightGrey,
            child: ProductImage(image: widget.product.images[0]),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            height: 110,
            padding: const EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductCategory(text: widget.product.category),
                  ProductTitle(title: (widget.product.title)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: CardRating(
                        rating: widget.product.rating,
                        ratingCount: widget.product.ratingCount,
                      )),
                      Price(
                        price: widget.product.price,
                      )
                    ],
                  )
                ]),
          )
        ],
      ),
    );
  }
}

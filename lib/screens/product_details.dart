import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';
import 'package:moniepoint_test/constants/dimensions.dart';
import 'package:moniepoint_test/models/product.dart';
import 'package:moniepoint_test/widgets/icon_badge.dart';
import 'package:moniepoint_test/widgets/price_widget.dart';
import 'package:moniepoint_test/widgets/product_category.dart';
import 'package:moniepoint_test/widgets/product_title.dart';
import 'package:moniepoint_test/widgets/rating_widget.dart';

import '../widgets/card_rating.dart';
import '../widgets/detailed_thumbnail.dart';

// ignore: must_be_immutable
class ProductDetails extends StatefulWidget {
  Product product;

  ProductDetails({super.key, required this.product});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: blackColor,
        elevation: 0,
        backgroundColor: whiteColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          const Icon(Icons.favorite_outline),
          const SizedBox(
            width: 12,
          ),
          const Icon(Icons.share_outlined),
          const SizedBox(
            width: 12,
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: IconBadge(
              icon: Icons.shopping_cart,
              text: "1",
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.centerLeft,
          child: Column(children: [
            DetailedThumbNail(
              images: widget.product.images,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: ProductCategory(text: widget.product.category)),
            Container(
                alignment: Alignment.centerLeft,
                child: ProductTitle(title: widget.product.title)),
            Container(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: CardRating(
                    rating: widget.product.rating,
                    ratingCount: "Rating",
                  )),
                  Expanded(
                      child: RatingWidget(
                          text: "${widget.product.reviews} Reviews")),
                  Expanded(
                      child: RatingWidget(text: "${widget.product.sold} Sold"))
                ],
              ),
            )
          ]),
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 30),
        width: Dimensions().getWidth(context),
        color: whiteColor,
        height: 90,
        child: Row(
          children: [
            Expanded(
              child: Column(children: [
                Text("Total price"),
                Price(
                  price: widget.product.price,
                  size: 30,
                )
              ]),
            ),
            //  Expanded(child: )
            Card(
              shape: StadiumBorder(),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.amber,
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    color: Colors.red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

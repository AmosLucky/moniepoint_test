import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:moniepoint_test/constants/colors.dart';
import 'package:moniepoint_test/constants/dimensions.dart';
import 'package:moniepoint_test/models/product.dart';
import 'package:moniepoint_test/widgets/icon_badge.dart';
import 'package:moniepoint_test/widgets/price_widget.dart';
import 'package:moniepoint_test/widgets/product_category.dart';
import 'package:moniepoint_test/widgets/product_title.dart';
import 'package:moniepoint_test/widgets/rating_widget.dart';

import '../widgets/bottom_widget.dart';
import '../widgets/card_rating.dart';
import '../widgets/detailed_thumbnail.dart';
import '../widgets/rating_deails.dart';

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
                  child: ProductTitle(
                    title: widget.product.title,
                    size: 20,
                  )),
              RatingDetails(
                product: widget.product,
              ),
              Container(
                height: 230,
                color: Colors.amber,
              ),
              const Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: ProductTitle(title: "Descritpion")),
              Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      child: Html(data: widget.product.description)),
                  Container(
                    child: Text(
                      "See less ^",
                      style: TextStyle(color: primaryColor),
                    ),
                  )
                ],
              ),
              const Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: ProductTitle(title: "Sellers Information")),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: lightGrey,
                  child: ProductTitle(title: widget.product.store),
                ),
                title: ProductTitle(title: widget.product.store),
                subtitle:
                    ProductCategory(text: "Active 5 min ago | 96.7% feedback"),
              ),
              Container(
                height: 120,
              ),
            ]),
          ),
        ),
        floatingActionButton: BottomWidget(
          price: widget.product.price,
        ));
  }
}

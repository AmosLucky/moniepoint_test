import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:moniepoint_test/constants/colors.dart';
import 'package:moniepoint_test/models/product.dart';
import 'package:moniepoint_test/widgets/icon_badge.dart';
import 'package:moniepoint_test/widgets/product_category.dart';
import 'package:moniepoint_test/widgets/product_title.dart';
import 'package:number_paginator/number_paginator.dart';

import '../animations/slide_up.dart';
import '../repos/product_repo.dart';
import '../widgets/bottom_widget.dart';
import '../widgets/detailed_thumbnail.dart';
import '../widgets/image_rating.dart';
import '../widgets/list_item.dart';
import '../widgets/list_widgets.dart';
import '../widgets/rating_deails.dart';
import '../widgets/rating_row.dart';
import '../widgets/review_widget.dart';

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
              FadeInUp(
                child: DetailedThumbNail(
                  images: widget.product.images,
                ),
              ),
              FadeInUp(
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: ProductCategory(text: widget.product.category)),
              ),
              FadeInUp(
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: ProductTitle(
                      title: widget.product.title,
                      size: 20,
                    )),
              ),
              FadeInUp(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: RatingDetails(
                    product: widget.product,
                  ),
                ),
              ),
              FadeInUp(
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 220,
                    child: DefaultTabController(
                      length: 2,
                      child: Scaffold(
                        appBar: AppBar(
                          backgroundColor: whiteColor,
                          foregroundColor: primaryColor,
                          elevation: 0,
                          toolbarHeight: 10,
                          bottom: TabBar(
                            labelColor: primaryColor,
                            indicatorColor: primaryColor,
                            tabs: const [
                              Tab(
                                text: "About item",
                              ),
                              Tab(
                                text: "Reviews",
                              ),
                            ],
                          ),
                        ),
                        body: TabBarView(children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: Column(children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ListItem(),
                                    ListItem(),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ListItem(),
                                    ListItem(),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ListItem(),
                                    ListItem(),
                                  ],
                                ),
                              )
                            ]),
                          )
                        ]),
                      ),
                    )),
              ),
              const Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: ProductTitle(title: "Descritpion")),
              Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      child: HtmlWidget(widget.product.description)),
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
                  margin: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.topLeft,
                  child: ProductTitle(title: "Sellers Information")),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.topLeft,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: lightGrey,
                    radius: 50,
                    child: ProductTitle(title: widget.product.store),
                  ),
                  title: ProductTitle(title: widget.product.store),
                  subtitle: Container(
                      child: ProductCategory(
                          text: "Active 5 min | 96.7% feedback")),
                ),
              ),
              Container(
                width: 150,
                child: OutlinedButton(
                  //style: ButtonStyle(foregroundColor: Colors.amber),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Visit Store",
                        style: TextStyle(color: primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.topLeft,
                  child: ProductTitle(title: "Review & Rating")),
              Container(
                  child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProductTitle(
                            title: "4.9",
                            size: 35,
                          ),
                          ProductCategory(text: "/50")
                        ],
                      ),
                      RatingBar.builder(
                        initialRating: 4.5,
                        itemSize: 20,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: ProductCategory(
                              text: widget.product.reviews.toString()))
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      RatingRow(
                        rating: "5",
                        percent: 0.9,
                        reviews: "15k",
                      ),
                      RatingRow(
                        rating: "4",
                        percent: 0.4,
                        reviews: "710",
                      ),
                      RatingRow(
                        rating: "3",
                        percent: 0.4,
                        reviews: "140",
                      ),
                      RatingRow(
                        rating: "2",
                        percent: 0.2,
                        reviews: "10",
                      ),
                      RatingRow(
                        rating: "1",
                        percent: 0.1,
                        reviews: "4",
                      ),
                    ],
                  )),
                ],
              )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: Text("Reviews with imaga & videos")),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: widget.product.images
                      .map((e) => ImageRating(image: e))
                      .toList(),
                ),
              ),
              Container(
                child: ListTile(
                  title: ProductTitle(
                    title: "Top Reviews",
                  ),
                  subtitle: ProductCategory(text: "Show 3 or 15k"),
                  trailing: DropdownButton<String>(
                    value: "Popular",
                    items:
                        <String>['Popular', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ),
              const ReviewWidgeth(),
              const ReviewWidgeth(),
              const ReviewWidgeth(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Row(children: [
                  Expanded(
                    child: NumberPaginator(
                      numberPages: 10,
                      onPageChange: (int index) {
                        // handle page change...
                      },
                    ),
                  ),
                  Container(
                    child: const Text(
                      "See More",
                      style: TextStyle(color: Colors.green),
                    ),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductTitle(title: "Recomendation"),
                    Container(
                      child: const Text(
                        "See More",
                        style: TextStyle(color: Colors.green),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: FutureBuilder(
                  future: ProductRepo().fetchProduct(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return const Center(
                        child: Text("An error occoured"),
                      );
                    } else if (!snapshot.hasData) {
                      return const Center(
                        child: Text("No data"),
                      );
                    }

                    return ListProducts(productMap: snapshot.data as List);
                  },
                ),
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

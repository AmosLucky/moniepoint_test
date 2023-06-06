import 'package:flutter/material.dart';
import 'package:moniepoint_test/widgets/single_product.dart';

import '../constants/dimensions.dart';
import '../models/product.dart';

// ignore: must_be_immutable
class ListProducts extends StatefulWidget {
  List productMap;
  ListProducts({super.key, required this.productMap});

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: (Dimensions().getWidth(context) / 500)),
      itemCount: widget.productMap.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, index) {
        Map<String, dynamic> singleMap = widget.productMap[index];
        return SingleProduct(product: Product.fromJson(singleMap));
      },
    );
  }
}

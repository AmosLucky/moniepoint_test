import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';
import 'package:moniepoint_test/repos/product_repo.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ProductImage extends StatefulWidget {
  String image;
  ProductImage({super.key, required this.image});

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  @override
  Widget build(BuildContext context) {
    ProductRepo productRepo = context.watch<ProductRepo>();
    return Stack(
      children: [
        Container(
          height: 100,
          width: 200,
          color: lightGrey,
          child: Image.asset(
            widget.image,
            fit: BoxFit.fill,
          ),
        ),
        Container(
            height: 50,
            //color: Colors.amber,
            alignment: Alignment.topRight,
            child: const Icon(Icons.favorite_outline)),
      ],
    );
  }
}

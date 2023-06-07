import 'package:flutter/material.dart';
import 'package:moniepoint_test/widgets/product_category.dart';
import 'package:moniepoint_test/widgets/product_title.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProductCategory(text: "Brand"),
        SizedBox(
          width: 20,
        ),
        ProductTitle(title: "CharmK")
      ],
    );
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:moniepoint_test/repos/product_repo.dart';
import 'package:moniepoint_test/widgets/product_title.dart';

import '../constants/colors.dart';
import '../widgets/carouse_head.dart';
import '../widgets/icon_badge.dart';
import '../widgets/list_widgets.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        title: Row(children: [
          const Expanded(child: SearchWidget()),
          IconBadge(icon: Icons.shopping_basket_outlined, text: "1"),
          IconBadge(icon: Icons.message_outlined, text: "9+")
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 350,
            //color: Colors.amber,
            child: FadeInUp(child: const CarouselHead()),
          ),
          FadeInUp(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 70,
              color: lightGrey,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: ProductTitle(
                      title: "Best Sale Product",
                    )),
                    (Text(
                      "See more",
                      style: TextStyle(
                          color: lightBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ))
                  ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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

                return FadeInUp(
                    child: ListProducts(productMap: snapshot.data as List));
              },
            ),
          )
        ]),
      ),
      bottomNavigationBar: navigationBar(),
    );
  }
}

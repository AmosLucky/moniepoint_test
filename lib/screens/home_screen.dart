import 'package:flutter/material.dart';
import 'package:moniepoint_test/repos/product_repo.dart';

import '../constants/colors.dart';
import '../widgets/list_widgets.dart';

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
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
              height: 280,
              color: Colors.amber,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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

                  return ListProducts(productMap: snapshot.data as List);
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';
import 'package:moniepoint_test/repos/product_repo.dart';
import 'package:provider/provider.dart';

import 'menu_item.dart';

class CarouselHead extends StatefulWidget {
  const CarouselHead({super.key});

  @override
  State<CarouselHead> createState() => _CarouselHeadState();
}

class _CarouselHeadState extends State<CarouselHead> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ProductRepo productRepo = context.watch<ProductRepo>();
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
            height: size.height / 4,
            viewportFraction: 1.0,
            enlargeCenterPage: true,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
        items: productRepo
            .fetchFeaturedProduct()
            .map((item) => InkWell(
                  onTap: () {
                    // var route = MaterialPageRoute(
                    //     builder: (BuildContext) =>
                    //         ServiceDetails(serviceModel: item));
                    // Navigator.push(context, route);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: size.height / 4,
                    decoration: BoxDecoration(
                        color: lightGrey,
                        // borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(item['images'][0]))),
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, bottom: 20),
                      alignment: Alignment.bottomLeft,
                      child: MaterialButton(
                        //shape: const StadiumBorder(),
                        onPressed: () {
                          // var route = MaterialPageRoute(
                          //     builder: (BuildContext) =>
                          //         ServiceDetails(serviceModel: item));
                          // Navigator.push(context, route);
                        },
                        child: Text("Book Now"),
                        textColor: whiteColor,
                        color: lightBlack,
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
      Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(children: [
          MenuItem(
            icon: Icons.widgets_outlined,
            title: "Category",
          ),
          MenuItem(
            icon: Icons.flight_outlined,
            title: "Flight",
          ),
          MenuItem(
            icon: Icons.battery_2_bar_outlined,
            title: "Bill",
          ),
          MenuItem(
            icon: Icons.support,
            title: "Data plan",
          ),
          MenuItem(
            icon: Icons.move_down_outlined,
            title: "Top up",
          )
        ]),
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              productRepo.fetchFeaturedProduct().asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 23.0 : 12,
                height: 5,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    // shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.red
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.2)),
              ),
            );
          }).toList()),
    ]);
  }
}

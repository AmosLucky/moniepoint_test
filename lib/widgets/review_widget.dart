import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';
import 'package:moniepoint_test/widgets/card_rating.dart';
import 'package:moniepoint_test/widgets/rating_widget.dart';

class ReviewWidgeth extends StatelessWidget {
  const ReviewWidgeth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(children: [
          const ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/1.png")),
            title: Text("Mr obadi"),
            trailing: Text("⭐ 5.0"),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.green)),
                        child: Text(
                          "Product tag",
                          style: TextStyle(color: primaryColor),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.green)),
                        child: Text(
                          "Product tag ",
                          style: TextStyle(color: primaryColor),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.green)),
                        child: Text(
                          "Product tag",
                          style: TextStyle(color: primaryColor),
                        )),
                  )
                ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            padding: EdgeInsets.all(5),
            child: Text(
                "Star was approved as part of Unicode 5.1 in 2008 under the name “White Medium Star” and added to"),
          ),
          Container(
              child: ListTile(
                  leading: Text(
                    " 👍 Helpful?",
                    style: TextStyle(color: Colors.green),
                  ),
                  trailing: Text(
                    "NightThug",
                    style: TextStyle(color: Colors.green),
                  )))
        ]),
      ),
    );
  }
}

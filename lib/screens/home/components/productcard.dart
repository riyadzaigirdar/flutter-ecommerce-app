import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/detail/detailscreen.dart';
import "package:flutter/material.dart";

class ProductCard extends StatelessWidget {
  ProductCard(this.id, this.title, this.price, this.image, this.color);

  final int id;
  final String title;
  final int price;
  final String image;
  final Color color;

  void press(context, id) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => DetailScreen(id, context)));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press(context, id),
      child: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            width: (size.width / 2) - 50,
            height: (size.width / 2) - 50,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "$price",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}

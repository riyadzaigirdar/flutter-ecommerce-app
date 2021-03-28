import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class ProductSize extends StatelessWidget {
  const ProductSize({
    Key key,
    @required this.size,
    @required this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Size",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "${product.size} cm",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

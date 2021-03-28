import 'package:flutter/material.dart';
import 'package:ecommerce/models/product.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristrocratic Hand Bag",
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}

import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/detail/components/product_color.dart';
import 'package:ecommerce/screens/detail/components/product_size.dart';
import 'package:flutter/material.dart';

class ProductDetailWhiteContainer extends StatelessWidget {
  const ProductDetailWhiteContainer(
      {Key key, @required this.size, @required this.product})
      : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 170.0),
      height: size.height * 0.6,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductColor(size: size, product: product),
                ProductSize(size: size, product: product)
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Text(
              product.description,
            ),
          )
        ],
      ),
    );
  }
}

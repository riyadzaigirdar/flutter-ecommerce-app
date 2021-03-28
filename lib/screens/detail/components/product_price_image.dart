import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class ProductPriceImage extends StatelessWidget {
  const ProductPriceImage({
    Key key,
    @required this.size,
    @required this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: size.width - 20,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
          ),
          Image.asset(
            product.image,
            fit: BoxFit.cover,
            width: 250,
            height: 400,
          )
          // Container(
          //     constraints: BoxConstraints.expand(height: 200.0),
          //     decoration: BoxDecoration(color: Colors.grey),
          //     child: Image.asset(product.image, fit: BoxFit.cover))
        ],
      ),
    );
  }
}

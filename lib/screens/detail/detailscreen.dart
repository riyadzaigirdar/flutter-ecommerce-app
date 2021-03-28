import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/detail/components/product_detail_white_container.dart';
import 'package:ecommerce/screens/detail/components/product_price_image.dart';
import 'package:ecommerce/screens/detail/components/product_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen(this.id, this.context);

  final int id;
  final BuildContext context;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Product product;

  @override
  void initState() {
    super.initState();
    product = fetchDetailProduct(widget.id);
    return;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBarDetail(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductTitle(product: product),
            Stack(
              children: [
                ProductDetailWhiteContainer(size: size, product: product),
                ProductPriceImage(size: size, product: product)
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBarDetail() {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      actions: [
        IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {}),
        IconButton(
          icon: Container(
              child: Stack(children: [
            SvgPicture.asset("assets/icons/cart.svg"),
            Positioned(
                left: 0,
                right: -18,
                top: 2,
                child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    )))
          ])),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}

import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/home/components/categories.dart';
import 'package:ecommerce/screens/home/components/productcard.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold, color: Colors.grey[700]),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.8),
              itemBuilder: (context, index) => ProductCard(
                    products[index].id,
                    products[index].title,
                    products[index].price,
                    products[index].image,
                    products[index].color,
                  )),
        ))
        // ListView.builder(
        //   itemCount: products.length,
        //   scrollDirection: Axis.horizontal,
        //   itemBuilder: (context, index) => ProductCard(
        //       // products[index].title,
        //       // products[index].price,
        //       // products[index].image,
        //       // products[index].color,
        //       ),
        // ),
      ],
    );
  }
}

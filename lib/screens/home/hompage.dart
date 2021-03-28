import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/home/components/homebody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Image.asset("assets/images/kalke.png"),
        onPressed: () {},
      ),
      title: const Text(
        "Kalke Shop App",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.black,
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
      toolbarHeight: 60.0,
    );
  }
}

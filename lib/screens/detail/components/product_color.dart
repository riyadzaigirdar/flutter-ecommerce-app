import 'package:ecommerce/models/activetab.dart';
import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class ProductColor extends StatefulWidget {
  const ProductColor({
    Key key,
    @required this.size,
    @required this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  _ProductColorState createState() => _ProductColorState();
}

class _ProductColorState extends State<ProductColor> {
  ActiveTab activeTab = ActiveTab(red: true, green: false, yellow: false);
  void handleState(Color pick) {
    // one way

    var updatedActiveTab = ActiveTab(red: false, green: false, yellow: false);
    if (pick == Colors.red) {
      updatedActiveTab.red = true;
    } else if (pick == Colors.green) {
      updatedActiveTab.green = true;
    } else {
      updatedActiveTab.yellow = true;
    }
    activeTab = updatedActiveTab;
    setState(() {});

    // second way
    // first initialize a json object with all key false
    // 1. convert to json map using jsonDecode(source)
    // 2. use map case to conver into object
    // 3. then set the state to that object
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width * 0.4,
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Color",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              ColorPicker(Colors.red, activeTab.red, handleState),
              ColorPicker(Colors.green, activeTab.green, handleState),
              ColorPicker(Colors.yellow, activeTab.yellow, handleState)
            ],
          )
        ],
      ),
    );
  }
}

class ColorPicker extends StatelessWidget {
  ColorPicker(this.color, this.isSelected, this.press);

  final Color color;
  final bool isSelected;
  final press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(color),
      child: Container(
        width: 24,
        height: 24,
        margin: const EdgeInsets.only(top: 10, right: 10),
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: isSelected ? Colors.black : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}

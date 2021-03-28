import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Handbag",
    "Jewellery",
    "FootWear",
    "Dresses",
    "Bags",
    "Cycle"
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index)),
    );
  }

  GestureDetector buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: index == selected ? Colors.black : Colors.black38),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              width: 25,
              height: 4,
              decoration: BoxDecoration(
                  color: index == selected ? Colors.black : Colors.black38,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
            )
          ],
        ),
      ),
    );
  }
}
